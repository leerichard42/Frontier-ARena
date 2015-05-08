using UnityEngine;
using System.Collections;
using System;

public class NetworkManager : Photon.MonoBehaviour {

	private const string roomName = "RoomName";
	private RoomInfo[] roomsList;
	//public GameObject anchor;
	public int maxPlayers = 4;
	public bool isPlayer = false; //true = player, false = spectator
	public bool inGame = false;
	public int map = -1;
	
	//public GameObject playerPrefab;

	// Use this for initialization
	void Start () {
		Screen.orientation = ScreenOrientation.Landscape;
		PhotonNetwork.ConnectUsingSettings ("0.1");
		PhotonNetwork.automaticallySyncScene = true;
		DontDestroyOnLoad (transform.gameObject);
	}
	
	// Update is called once per frame
	void Update () {
	
	}


	
	void OnJoinedRoom()
	{
		Debug.Log("Connected to Room");
		// Spawn player
		//GameObject obj = PhotonNetwork.Instantiate (playerPrefab.name, anchor.transform.position, Quaternion.identity, 0);
		//obj.transform.parent = GameObject.FindGameObjectWithTag ("MainTarget").transform;
		//obj.transform.localScale = anchor.transform.localScale;
		//photonView.RPC ("SetParent", PhotonTargets.AllViaServer);
	}

	void OnGUI()
	{
		if (!PhotonNetwork.connected) {
			GUILayout.Label (PhotonNetwork.connectionStateDetailed.ToString ());
		} else if (PhotonNetwork.room == null) {
			// Create Room
			if (GUI.Button (new Rect (100, 100, 250, 100), "Start Server")) {
				isPlayer = true;
				PhotonNetwork.CreateRoom (roomName + Guid.NewGuid ().ToString ("N"), true, true, 5);
			}
			// Join Room
			if (roomsList != null) {
				for (int i = 0; i < roomsList.Length; i++) {
					if (PhotonNetwork.countOfPlayers < maxPlayers) {
						if (GUI.Button (new Rect (100, 250 + (110 * i), 250, 100), "Join Room " + i)) {
							isPlayer = true;
							PhotonNetwork.JoinRoom (roomsList [i].name);
						}
					}
					if (GUI.Button (new Rect (500, 250 + (110 * i), 250, 100), "Spectate Room " + i)) {
						isPlayer = false;
						PhotonNetwork.JoinRoom (roomsList [i].name);
					}
				}
			}
		} else if (PhotonNetwork.isMasterClient && !inGame && map < 0) {
			if(GUI.Button (new Rect(100, 100, 250, 100), "Arena")){
				map = 1;
			}
			if(GUI.Button (new Rect(500, 100, 250, 100), "Platformer")){
				map = 2;
			}
			if(GUI.Button (new Rect(900, 100, 250, 100), "Squiggly")){
				map = 3;
			}
			if(GUI.Button (new Rect(100, 500, 250, 100), "RoundTable")){
				map = 4;
			}
			if(GUI.Button (new Rect(500, 500, 250, 100), "Tourney")){
				map = 5;
			}
		}
		else if(PhotonNetwork.isMasterClient && !inGame)
		{
			if(GUI.Button (new Rect(100, 100, 250, 100), "Start Game")){
				PhotonNetwork.LoadLevel (map);
			}
		}
	}
	
	void OnReceivedRoomListUpdate()
	{
		roomsList = PhotonNetwork.GetRoomList();
	}

	/*
	[RPC] void SetParent(){
		GameObject[] players = GameObject.FindGameObjectsWithTag ("Player");
		foreach(GameObject player in players){
			player.transform.parent = GameObject.FindGameObjectWithTag ("MainTarget").transform;
			player.transform.localScale = anchor.transform.localScale;
		}
	}*/
	
}

using UnityEngine;
using System.Collections;
using System;

public class NetworkManager : Photon.MonoBehaviour {

	private const string roomName = "RoomName";
	private RoomInfo[] roomsList;
	public GameObject anchor;
	public int maxPlayers = 4;
	
	public GameObject playerPrefab;

	// Use this for initialization
	void Start () {
		Screen.orientation = ScreenOrientation.Landscape;
		PhotonNetwork.ConnectUsingSettings ("0.1");
		PhotonNetwork.automaticallySyncScene = true;
	}
	
	// Update is called once per frame
	void Update () {
	
	}


	
	void OnJoinedRoom()
	{
		Debug.Log("Connected to Room");
		// Spawn player
		GameObject obj = PhotonNetwork.Instantiate (playerPrefab.name, anchor.transform.position, Quaternion.identity, 0);
		obj.transform.parent = GameObject.FindGameObjectWithTag ("MainTarget").transform;
		obj.transform.localScale = anchor.transform.localScale;
		photonView.RPC ("SetParent", PhotonTargets.AllViaServer);
	}

	void OnGUI()
	{
		if (!PhotonNetwork.connected)
		{
			GUILayout.Label(PhotonNetwork.connectionStateDetailed.ToString());
		}
		else if (PhotonNetwork.room == null)
		{
			// Create Room
			if (GUI.Button(new Rect(100, 100, 250, 100), "Start Server"))
				PhotonNetwork.CreateRoom(roomName + Guid.NewGuid().ToString("N"), true, true, 5);
			
			// Join Room
			if (roomsList != null)
			{
				for (int i = 0; i < roomsList.Length; i++)
				{
					if (GUI.Button(new Rect(100, 250 + (110 * i), 250, 100), "Join " + roomsList[i].name))
						if(PhotonNetwork.countOfPlayers < maxPlayers)
							PhotonNetwork.JoinRoom(roomsList[i].name);
				}
			}
		}
		else if(PhotonNetwork.isMasterClient)
		{
			if(GUI.Button (new Rect(100, 100, 250, 100), "Start Game")){
				PhotonNetwork.LoadLevel ("vuforia_test_arena");
			}
		}
	}
	
	void OnReceivedRoomListUpdate()
	{
		roomsList = PhotonNetwork.GetRoomList();
	}

	[RPC] void SetParent(){
		GameObject[] players = GameObject.FindGameObjectsWithTag ("Player");
		foreach(GameObject player in players){
			player.transform.parent = GameObject.FindGameObjectWithTag ("MainTarget").transform;
			player.transform.localScale = anchor.transform.localScale;
		}
	}
	
}

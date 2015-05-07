using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class GameManager : Photon.MonoBehaviour {

	public GameObject playerPrefab;
	public GameObject[] spawnPoints;
	private GameObject spawn_point;

	// Use this for initialization
	void Start () {
		Screen.orientation = ScreenOrientation.Landscape;
		GameObject networkManagerObj = GameObject.FindGameObjectWithTag ("NetworkManager");
		NetworkManager networkScript = (NetworkManager)networkManagerObj.GetComponent (typeof(NetworkManager));
		networkScript.inGame = true;
		int spawn_position = positionToSpawnPlayer ();
		spawn_point = spawnPoints [spawn_position];
		if (networkScript.isPlayer) {
			GameObject obj = PhotonNetwork.Instantiate (playerPrefab.name, spawn_point.transform.position, spawn_point.transform.rotation, 0);
			obj.transform.parent = GameObject.FindGameObjectWithTag ("MainTarget").transform;
			obj.transform.localScale = spawn_point.transform.localScale;
			photonView.RPC ("SetParent", PhotonTargets.AllViaServer);
		}
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	[RPC] void SetParent(){
		GameObject[] players = GameObject.FindGameObjectsWithTag ("Player");
		foreach(GameObject player in players){
			player.transform.parent = GameObject.FindGameObjectWithTag ("MainTarget").transform;
			player.transform.localScale = spawn_point.transform.localScale;
		}
	}


	int positionToSpawnPlayer(){
		PhotonPlayer[] list = PhotonNetwork.playerList;
		List<int> sorted_players = new List<int> ();;
		foreach(PhotonPlayer player in list){
			sorted_players.Add(player.ID);
		}
		sorted_players.Sort ();
		return sorted_players.IndexOf (PhotonNetwork.player.ID);
	}

}

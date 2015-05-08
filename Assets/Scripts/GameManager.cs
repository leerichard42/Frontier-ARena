using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class GameManager : Photon.MonoBehaviour {

	public GameObject playerPrefab;
	public GameObject[] spawnPoints;
	private GameObject spawn_point;

	// UI stuff
	public GameObject IDtext;
	public GameObject colorBlock;
	List<int> sorted_players;
	public GameObject score1, score2, score3, score4;

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
		}
		photonView.RPC ("SetParent", PhotonTargets.AllViaServer);

		// UI
		IDtext = GameObject.Find("PlayerID");
		IDtext.GetComponent<Text>().text = "Player " + (int)( + 1);
		colorBlock = GameObject.Find("PlayerColor");
		Color playerColor = new Color(1f,1f,1f,1f); // replace with playermanager.getcolor
		colorBlock.GetComponent<Image> ().color = playerColor;
		score1 = GameObject.Find("PlayerScore1");
		score2 = GameObject.Find("PlayerScore2");
		score3 = GameObject.Find("PlayerScore3");
		score4 = GameObject.Find("PlayerScore4");

	}
	
	// Update is called once per frame
	void Update () {
		GameObject[] players = GameObject.FindGameObjectsWithTag("Player");
		foreach (GameObject obj in players){
			PlayerManager script = obj.GetComponent<PlayerManager>();
			if (script.playerID == 1){
				score1.GetComponent<Text>().text = "1. Player 1: " + script.score;
			}
			else if (script.playerID == 2){
				score1.GetComponent<Text>().text = "2. Player 2: " + script.score;
			}
			else if (script.playerID == 3){
				score1.GetComponent<Text>().text = "3. Player 3: " + script.score;
			}
			else if (script.playerID == 4){
				score1.GetComponent<Text>().text = "4. Player 4: " + script.score;
			}
		}
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

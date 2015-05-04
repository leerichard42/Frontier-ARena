using UnityEngine;
using System.Collections;

public class GameManager : Photon.MonoBehaviour {

	public GameObject playerPrefab;
	public GameObject anchor;

	// Use this for initialization
	void Start () {
		Screen.orientation = ScreenOrientation.Landscape;
		GameObject obj = PhotonNetwork.Instantiate (playerPrefab.name, anchor.transform.position, Quaternion.identity, 0);
		obj.transform.parent = GameObject.FindGameObjectWithTag ("MainTarget").transform;
		obj.transform.localScale = anchor.transform.localScale;
		photonView.RPC ("SetParent", PhotonTargets.AllViaServer);
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	[RPC] void SetParent(){
		GameObject[] players = GameObject.FindGameObjectsWithTag ("Player");
		foreach(GameObject player in players){
			player.transform.parent = GameObject.FindGameObjectWithTag ("MainTarget").transform;
			player.transform.localScale = anchor.transform.localScale;
		}
	}
}

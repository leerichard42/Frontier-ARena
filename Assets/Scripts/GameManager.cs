using UnityEngine;
using System.Collections;

public class GameManager : Photon.MonoBehaviour {

	public int unusedID;

	// Use this for initialization
	void Start () {
		Screen.orientation = ScreenOrientation.Landscape;
		unusedID = 0;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void updateID(){
		Debug.Log (unusedID);
		unusedID++;
	}
}

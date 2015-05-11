using UnityEngine;
using System.Collections;

public class MenuScript : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	public void loadLevel(string level) {
		Application.LoadLevel (level);
	}

	public void load() {
		Application.LoadLevel ("Lobby");
	}
}

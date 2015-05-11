using UnityEngine;
using System.Collections;

public class AudienceScript : MonoBehaviour {
	public Animator [] controllers;
	// Use this for initialization
	void Start () {
	
	}

	void Cheer() {
		// play cheer sound
		foreach (Animator a in controllers) {
			a.SetTrigger ("Cheer");
		}
	}


}

using UnityEngine;
using System.Collections;

public class DummyScript : MonoBehaviour {
	float waitTimer = 0;
	float hitTime = 0.5f;
	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		if (waitTimer > 0) {
			waitTimer -= Time.deltaTime;
			if(waitTimer <= 0){
				gameObject.renderer.material.color = new Color (1, 1, 1);
			}
		}
	}

	public void takeHit(){
		gameObject.renderer.material.color = new Color (1, 0, 0);
		waitTimer = hitTime;
	}
}

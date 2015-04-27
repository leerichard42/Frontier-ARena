using UnityEngine;
using System.Collections;

public class HitboxScript : MonoBehaviour {
	GameObject player;

	// Use this for initialization
	void Start () {
		player = transform.parent.gameObject;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter(Collider collider){
		GameObject obj = collider.gameObject;
		if (obj != player && obj.tag == "Weapon") {
			player.GetComponent<PlayerManager>().hit();
		}
	}
}

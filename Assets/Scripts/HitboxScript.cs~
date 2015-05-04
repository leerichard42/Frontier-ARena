using UnityEngine;
using System.Collections;

public class HitboxScript : MonoBehaviour {
	GameObject player;
	GameObject playerLance;

	// Use this for initialization
	void Start () {
		player = transform.parent.gameObject;
		playerLance = transform.parent.gameObject.transform.FindChild("Lance").gameObject;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter(Collider collider){
		GameObject obj = collider.gameObject;
		if (obj != playerLance && obj.tag == "Weapon"&& obj.transform.parent.rigidbody.velocity.magnitude > 0.5) {
			player.GetComponent<PlayerManager>().hit();
		}
	}
}

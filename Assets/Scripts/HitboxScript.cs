using UnityEngine;
using System.Collections;

public class HitboxScript : Photon.MonoBehaviour {
	GameObject player;
	GameObject playerLance;

	// Use this for initialization
	void Start () {
//		if (photonView.isMine) {
			player = transform.parent.gameObject;
			playerLance = transform.parent.gameObject.transform.FindChild ("Lance").gameObject;
//		}
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter(Collider collider){
//		if (photonView.isMine) {
			GameObject obj = collider.gameObject;
			if (obj != playerLance && obj.tag == "Weapon" 
//			    && obj.transform.parent.rigidbody.velocity.magnitude > 0.5
			    && !player.GetComponent<PlayerManager>().invincible) {
				player.GetComponent<PlayerManager> ().hit ();

				// add score upon hit
				obj.transform.GetComponentInParent<PlayerManager>().score += 1;
			}
//		}
	}
}

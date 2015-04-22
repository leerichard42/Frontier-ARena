using UnityEngine;
using System.Collections;

public class PlayerManager : Photon.MonoBehaviour {
	GameObject cam;
	public float chargeTimer;

	void Start () {
<<<<<<< HEAD
		cam = GameObject.Find ("Main Camera");
		chargeTimer = 0;
=======
		camera = GameObject.FindGameObjectWithTag("MainCamera");
		attackCollider = transform.FindChild ("Attack Collider").gameObject;
		animator = gameObject.GetComponent<Animator> ();
		attackCollider.SetActive(false);
		health = 100;
>>>>>>> origin/Networking
	}
	
	// Update is called once per frame
	void Update () {
//		if(photonView.isMine){

		transform.LookAt (transform.position + rigidbody.velocity);
		if(Input.GetKeyDown(KeyCode.Space) || (Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Began)){
			chargeTimer = 0;
		}
		if (Input.GetKey (KeyCode.Space) || (Input.touchCount > 0 
		                                     && (Input.GetTouch(0).phase == TouchPhase.Stationary || Input.GetTouch(0).phase == TouchPhase.Moved))) {
			chargeTimer += Time.deltaTime;
		}
		if (Input.GetKeyUp (KeyCode.Space) || (Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Ended)) {
//			Vector3 launchDir = (transform.position - cam.transform.position).normalized;
			Vector3 launchDir = cam.transform.forward;
			launchDir.y = 0;
			transform.LookAt(transform.position + launchDir);
			rigidbody.velocity += launchDir * Mathf.Min(chargeTimer, 2) * 20;
		}
//		}
	}

	public void hit(){
//		Destroy (gameObject);
		transform.position = Vector3.zero;
	}

	void OnCollisionEnter(Collision collision){
		Debug.Log ("Hit: " + collision.gameObject.name + "," + gameObject.name);
		GameObject obj = collision.gameObject;
		if (obj.tag == "Player") {
			Debug.Log ("Hit Player");
			if(Vector3.Dot(obj.transform.forward, (obj.transform.position - transform.position)) > 0){
				obj.GetComponent<PlayerManager>().hit();
			}
		}
	}
}

using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class PlayerManager : Photon.MonoBehaviour {
	public Camera cam;
	public float chargeTimer;
	GameObject panel;
	Color good = new Color(1f,1f,1f,50f/255f);
	Color bad = new Color(77f/55f,77f/255f,77f/255f,100f/255f);

	void Start () {
		cam = GameObject.Find("ARCamera").transform.GetComponentInChildren<Camera>();
		chargeTimer = 0;
		panel = GameObject.FindGameObjectWithTag("MainPanel");
		panel.GetComponent<Image>().color = bad;
	}
	
	// Update is called once per frame
	void Update () {
//		if(photonView.isMine){]
//		Vector3 screenPos = cam.WorldToScreenPoint(transform.position);
//
//		if (screenPos.x < camera.pixelWidth * .75f && screenPos.x > camera.pixelWidth * .25f
//			&& screenPos.y < camera.pixelHeight * .75f && screenPos.y > camera.pixelHeight * .25f) {
//			checkMovement ();
//			panel.GetComponent<Image>().color = good;
//		} else {
//			panel.GetComponent<Image>().color = bad;
//		}
//		}
	}

	public void checkMovement(){
		if (rigidbody.velocity.magnitude < 1) {
			if(rigidbody.velocity != Vector3.zero){
				rigidbody.velocity = Vector3.zero;
				rigidbody.angularVelocity = Vector3.zero;
			}
			else{
				Vector3 launchDir = cam.transform.forward;
				launchDir.y = 0;
				launchDir.Normalize();
				transform.LookAt(transform.position + launchDir);
				
			}
		} else {
			transform.LookAt (transform.position + rigidbody.velocity);
		}
		
		if(Input.GetKeyDown(KeyCode.Space) || (Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Began)){
			chargeTimer = 0;
		}
		if (Input.GetKey (KeyCode.Space) || (Input.touchCount > 0 
		                                     && (Input.GetTouch(0).phase == TouchPhase.Stationary || Input.GetTouch(0).phase == TouchPhase.Moved))) {
			chargeTimer += Time.deltaTime;
		}
		if (Input.GetKeyUp (KeyCode.Space) || (Input.touchCount > 0 && Input.GetTouch(0).phase == TouchPhase.Ended)) {
			Vector3 launchDir = cam.transform.forward;
			launchDir.y = 0;
			launchDir.Normalize();
			transform.LookAt(transform.position + launchDir);
			rigidbody.velocity += launchDir * Mathf.Min(chargeTimer, 2) * 20;
			Debug.Log ("Launch velocity: " + rigidbody.velocity.magnitude);
			
		}
	}

	public void hit(){
//		Destroy (gameObject);
		transform.position = Vector3.zero;
	}

	void OnCollisionEnter(Collision collision){
		GameObject obj = collision.gameObject;
		if (obj.tag == "Player") {
			if(Vector3.Dot(obj.transform.forward, (obj.transform.position - transform.position)) > 0){
				obj.GetComponent<PlayerManager>().hit();
			}
		}
	}
}

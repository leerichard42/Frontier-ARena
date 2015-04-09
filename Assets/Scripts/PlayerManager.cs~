using UnityEngine;
using System.Collections;

public class PlayerManager : MonoBehaviour {
	float forwardSpeed = 0.1f;
	float strafeSpeed = 0.15f;
	float runSpeed = 0.3f;
	bool freeRunning = false;
	GameObject camera;
	// Use this for initialization
	void Start () {
		transform.LookAt (new Vector3(GameObject.Find ("Target").gameObject.transform.position.x,
		                              transform.position.y,
		                              GameObject.Find ("Target").gameObject.transform.position.z));
		camera = GameObject.Find ("Main Camera");
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetButtonDown ("Run")) {
			if (!freeRunning) {
				freeRunning = true;
			}
		} 
		if(Input.GetButtonUp("Run")){
			if(freeRunning){
				freeRunning = false;
			}
		}
		float strafeInput = 0;
		float forwardInput = 0;
		if (Input.touchCount == 0) {
			strafeInput = Input.GetAxis ("Horizontal");
			forwardInput = Input.GetAxis ("Vertical");
		} else {
			strafeInput = CustomInput.GetAxis ("Horizontal");
			forwardInput = CustomInput.GetAxis ("Vertical");
			if(Input.touchCount == 2){
				freeRunning = true;
			}
			else if(freeRunning){
				freeRunning = false;
			}
		}
		if (strafeInput != 0 || forwardInput != 0) {
			Vector3 dirToMove = Vector3.Normalize(camera.transform.forward * forwardInput
			                                      + camera.transform.right * strafeInput);

			if(!freeRunning){ //Fighting
				transform.LookAt (new Vector3 (GameObject.Find ("Target").gameObject.transform.position.x,
			                              transform.position.y,
			                              GameObject.Find ("Target").gameObject.transform.position.z));

				float forwardWeight = Mathf.Sign(Vector3.Dot(dirToMove, transform.forward))
					* Vector3.Project(dirToMove, transform.forward.normalized).magnitude;
//				Debug.Log("FORWARD WEIGHT: " + forwardWeight);
				float strafeWeight = Mathf.Sign(Vector3.Dot(dirToMove, transform.right))
					* Vector3.Project(dirToMove, transform.right.normalized).magnitude;
//				Debug.Log("STRAFE WEIGHT: " + strafeWeight);
				
				rigidbody.MovePosition (transform.position 
					+ transform.forward * forwardWeight * forwardSpeed
					+ transform.right * strafeWeight * strafeSpeed);
			}
			else{ //Running
				Vector3 target = transform.position + dirToMove * 10;
				transform.LookAt (new Vector3 (target.x,
				                               transform.position.y,
				                               target.z));
				rigidbody.MovePosition (transform.position + transform.forward * runSpeed);
			}
		}
	}
}

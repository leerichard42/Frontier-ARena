using UnityEngine;
using System.Collections;

public class CameraController : MonoBehaviour {

	// Use this for initialization
	void Start () {
		transform.LookAt (GameObject.Find ("Ground").transform.position);
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKey(KeyCode.A)){
			transform.RotateAround(GameObject.Find ("Ground").transform.position, Vector3.up, 5);
		}
		if(Input.GetKey(KeyCode.D)){
			transform.RotateAround(GameObject.Find ("Ground").transform.position, Vector3.up, -5);
		}
	}
}

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class ConveyorScript : MonoBehaviour {
	public enum moveDir{
		positiveX, negativeX
	};

	public float moveSpeed = 5f;
	public moveDir direction;
	private int sign;

	public List<GameObject> players;

	// Use this for initialization
	void Start () {
		players = new List<GameObject>();
		if (direction == moveDir.positiveX){
			sign = 1;
		}
		else{
			sign = -1;
		}
	}
	
	// Update is called once per frame
	void Update () {
		foreach(GameObject obj in players){
			obj.transform.position = new Vector3(obj.transform.position.x + moveSpeed * sign * Time.deltaTime,
			                                     obj.transform.position.y,
			                                     obj.transform.position.z);
		}
	}

	void OnTriggerStay(Collider collider){
		GameObject obj = collider.gameObject;
		if (obj.tag == "Player" && players.Contains(obj) == false){
			players.Add(collider.gameObject);
		}
	}

	void OnTriggerExit(Collider collider){
		GameObject obj = collider.gameObject;
		if (obj.tag == "Player" && players.Contains(obj) == true){
			players.Remove(collider.gameObject);
		}
	}
}

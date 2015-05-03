using UnityEngine;
using System.Collections;

public class PortalScript : MonoBehaviour {
	public GameObject otherPortal;
	private PortalScript otherScript;
	public bool teleporting;

	// Use this for initialization
	void Start () {
		teleporting = false;
		otherScript = otherPortal.GetComponent<PortalScript>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter(Collider collider){
		GameObject player = collider.gameObject;
		if (teleporting == false){
			teleporting = true;
			otherScript.teleporting = true;
			//this.coolDown();
			player.transform.position = new Vector3(otherPortal.transform.position.x,
			                                        otherPortal.transform.parent.position.y,
			                                        otherPortal.transform.position.z);
			player.transform.rotation = otherPortal.transform.rotation;
		}

	}

	void OnTriggerExit(Collider collider){
		if (teleporting == true){
			teleporting = false;
			otherScript.teleporting = false;
		}
	}

	public void coolDown(){
		this.gameObject.GetComponent<BoxCollider>().enabled = false;
		StartCoroutine("Reactivate");
	}

	IEnumerator Reactivate(){
		yield return new WaitForSeconds(2);
		this.gameObject.GetComponent<BoxCollider>().enabled = true;
	}
}

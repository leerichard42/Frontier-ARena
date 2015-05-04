using UnityEngine;
using System.Collections;

public class PowerupScript : MonoBehaviour {
	public float respawnTimer = 10f;
	private float currentTimer;
	public int state = 0; // 0 is nothing, 1 is invinsibility and 2 is charge
	public GameObject powerUpBase;

	public Material charge, invincibility;

	// Use this for initialization
	void Start () {
		currentTimer = respawnTimer;
		powerUpBase = transform.parent.gameObject;
		this.renderer.enabled = false;
		this.collider.enabled = false;
	}
	
	// Update is called once per frame
	void Update () {
		if (currentTimer >= 0){
			currentTimer -= Time.deltaTime;
		}
		else{
			currentTimer = respawnTimer;
			state = Random.Range(0,3);
			// spawns something
			if (state == 0){
				// nothing happens
				this.renderer.enabled = false;
				this.collider.enabled = false;
			}
			else if(state == 1){
				// invinsibility
				this.renderer.enabled = true;
				this.collider.enabled = true;
				this.renderer.material = invincibility;
				powerUpBase.renderer.material = invincibility;
			}
			else if(state == 2){
				// charge
				this.renderer.enabled = true;
				this.collider.enabled = true;
				this.renderer.material = charge;
				powerUpBase.renderer.material = charge;
			}
		}
	}

	void OnTriggerEnter(Collider collider){
		if (collider.gameObject.tag == "Player"){
			// reset respawn and turn off the object
			currentTimer = respawnTimer;
			this.renderer.enabled = false;
			this.collider.enabled = false;
		}
	}


}

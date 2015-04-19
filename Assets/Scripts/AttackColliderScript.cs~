using UnityEngine;
using System.Collections;

public class AttackColliderScript : MonoBehaviour {
	PlayerManager parent;

	// Use this for initialization
	void Start () {
		parent = transform.parent.gameObject.GetComponent<PlayerManager> ();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter(Collider other){
		if (other.gameObject != parent.gameObject && other.gameObject.tag == "Player") {
			PlayerManager enemy = other.gameObject.GetComponent<PlayerManager>();
			if(parent.attackStatus == PlayerManager.AttackStatus.LightAttack){
				enemy.takeDamage(10);
			}
			else if(parent.attackStatus == PlayerManager.AttackStatus.HeavyAttack){
				enemy.takeDamage(20);
			}
			else if(parent.attackStatus == PlayerManager.AttackStatus.DashAttack){
				enemy.takeDamage(15);
			}
		}
		if (other.gameObject.tag == "Dummy") {
			other.gameObject.GetComponent<DummyScript>().takeHit();
		}
	}
}

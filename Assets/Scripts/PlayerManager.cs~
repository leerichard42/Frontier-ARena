using UnityEngine;
using System.Collections;

public class PlayerManager : MonoBehaviour {
	public float health;
	float forwardSpeed = 0.1f;
	float strafeSpeed = 0.15f;
	float runSpeed = 0.3f;
	float dashSpeed = 0.6f;
	GameObject camera;
	GameObject attackCollider;
	float waitTimer;
	float lightDurationTime = 0.3f;
	float heavyPrepTime = 0.5f;
	float heavyDurationTime = 0.3f;
	float heavyCooldownTime = 0.7f;
	float dashDurationTime = 0.8f;
	float dashCooldownTime = 0.5f;
	float hitStunTime = 0.3f;
	bool hitStunned = false;
	
	public AttackStatus attackStatus = AttackStatus.Idle;
	public enum AttackStatus{ Idle, Preparation, LightAttack, HeavyAttack, Cooldown, DashAttack, DashCooldown}

	private Animator animator;
	// Use this for initialization
	void Start () {
		camera = GameObject.Find ("Main Camera");
		attackCollider = transform.FindChild ("Attack Collider").gameObject;
		animator = gameObject.GetComponent<Animator> ();
		attackCollider.SetActive(false);
		health = 100;
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown(KeyCode.Space)){
			cancelAttack();
		}

		if (hitStunned) {
			if(waitTimer <= 0){
				hitStunned = false;
				gameObject.renderer.material.color = new Color (1, 1, 1);
			}
			else{
				waitTimer -= Time.deltaTime;
			}
			return;
		}
		if(attackStatus == AttackStatus.Preparation
		   || attackStatus == AttackStatus.Idle 
		   || attackStatus == AttackStatus.DashCooldown){
			checkRotation ();
		}
		if (waitTimer <= 0) {
			checkMovement();
			checkAttack ();
		} else {
			waitTimer -= Time.deltaTime;
			if(attackStatus == AttackStatus.DashAttack){
				rigidbody.MovePosition (transform.position + transform.forward * dashSpeed);
			}
			
			if(waitTimer <= 0){
				if(attackStatus == AttackStatus.LightAttack){
					attackStatus = AttackStatus.Idle;
					attackCollider.SetActive(false);
				}
				else if(attackStatus == AttackStatus.Preparation){
					attackStatus = AttackStatus.HeavyAttack;
					attackCollider.SetActive(true);
					waitTimer = heavyDurationTime;
				}
				else if(attackStatus == AttackStatus.HeavyAttack){
					attackStatus = AttackStatus.Cooldown;
					attackCollider.SetActive(false);
					waitTimer = heavyCooldownTime;
				}
				else if(attackStatus == AttackStatus.Cooldown){
					attackStatus = AttackStatus.Idle;
				}
				else if(attackStatus == AttackStatus.DashAttack){
					attackStatus = AttackStatus.DashCooldown;
					attackCollider.SetActive(false);
					waitTimer = dashCooldownTime;
				}
				else if(attackStatus == AttackStatus.DashCooldown){
					attackStatus = AttackStatus.Idle;
				}
				else{
					Debug.Log ("Attack Status Error");
				}
			}
			
		}
	}
	
	public void takeDamage(float damage){
		health -= damage;
		gameObject.renderer.material.color = new Color (1, 0, 0);
		hitStunned = true;
		waitTimer = hitStunTime;
		attackStatus = AttackStatus.Idle;
	}
	
	void checkRotation(){
		float strafeInput = getStrafeInput();
		float forwardInput = getForwardInput();
		setRotation (strafeInput, forwardInput);
	}

	public void setRotation(float strafeInput, float forwardInput){
		Vector3 dirToMove = Vector3.Normalize (camera.transform.forward * forwardInput
		                                       + camera.transform.right * strafeInput);
		
		
		Vector3 target = transform.position + dirToMove * 10;
		transform.LookAt (new Vector3 (target.x,
		                               transform.position.y,
		                               target.z));
	}

	void checkMovement(){
		float strafeInput = getStrafeInput();
		float forwardInput = getForwardInput();
		if (strafeInput != 0 || forwardInput != 0) {
			if(!animator.GetBool("walking")){
				animator.SetBool("walking", true);
			}
			rigidbody.MovePosition (transform.position + transform.forward * runSpeed);
		} else {
			if(animator.GetBool("walking")){
				animator.SetBool("walking", false);
			}
		}
	}
	
	float getStrafeInput(){
		float strafeInput = 0;
		if (Input.touchCount == 0) {
			strafeInput = Input.GetAxis ("Horizontal");
		} else {
			strafeInput = CustomInput.GetAxis ("Horizontal");
		}
		return strafeInput;
	}
	
	float getForwardInput(){
		float forwardInput = 0;
		if (Input.touchCount == 0) {
			forwardInput = Input.GetAxis ("Vertical");
		} else {
			forwardInput = CustomInput.GetAxis ("Vertical");
		}
		return forwardInput;
	}
	
	void checkAttack(){
		//Keyboard Input
		if (Input.GetKeyDown (KeyCode.J)) {
			lightAttack ();
		}
		if (Input.GetKeyDown (KeyCode.K)) {
			heavyAttack();
		}
		if (Input.GetKeyDown (KeyCode.L)) {
			dashAttack();
		}

		
		if (attackStatus == AttackStatus.LightAttack) {
			attackCollider.SetActive(true);
			waitTimer = lightDurationTime;
		}
		if (attackStatus == AttackStatus.Preparation) {
			waitTimer = heavyPrepTime;
		}
		if (attackStatus == AttackStatus.DashAttack) {
			waitTimer = dashDurationTime;
			attackCollider.SetActive(true);
		}
	}

	public void lightAttack(){
		if (waitTimer <= 0) {
			attackStatus = AttackStatus.LightAttack;
		}
	}

	public void heavyAttack(){
		if (waitTimer <= 0) {
			attackStatus = AttackStatus.Preparation;
		}
	}

	public void dashAttack(){
		if (waitTimer <= 0) {
			attackStatus = AttackStatus.DashAttack;
		}
	}

	public void cancelAttack(){
		if(attackStatus == AttackStatus.Preparation){
			attackStatus = AttackStatus.Idle;
			waitTimer = 0;
		}
	}
}

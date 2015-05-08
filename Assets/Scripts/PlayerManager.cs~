using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class PlayerManager : Photon.MonoBehaviour {
	public Camera cam;
	public float chargeTimer;
	GameObject panel;
	Color good = new Color(1f,1f,1f,50f/255f);
	Color bad = new Color(77f/55f,77f/255f,77f/255f,100f/255f);

	public int playerID;
	public float waitTimer;
	public bool stunned = false;
	public float stunTime = 0.5f;
	public float blinksLeft = 6;
	public float livesLeft = 3;
	public bool invincible = false;
	public float invincibilityTimer;
	public bool instaCharge = false;
	public float instaChargeTimer;
	public GameObject shield;
	public Animator animController;
	public GameObject arrow;
	public Color horseColor;
	public ChargeBarScript focusScript;

	void Start () {
		GameObject gameManager = GameObject.FindGameObjectWithTag ("GameManager");
		GameManager gameManagerScript = (GameManager)gameManager.GetComponent (typeof(GameManager));
		if (photonView.isMine) {
			playerID = PhotonNetwork.player.ID;
		}
		cam = GameObject.Find("Camera").GetComponent<Camera>();
		chargeTimer = 0;
		waitTimer = 0;
//		panel = GameObject.FindGameObjectWithTag("MainPanel");
//		panel.GetComponent<Image>().color = bad;
		shield = transform.FindChild ("Shield").gameObject;
		shield.SetActive (false);
		animController = GetComponent<Animator> ();
		animController.SetBool ("Charging", false);
		animController.SetBool ("Running", false);
		animController.SetBool ("Hit", false);
		arrow = transform.FindChild ("arrow").gameObject;
		if (!photonView.isMine) {
			arrow.SetActive(false);
			Destroy (arrow);
		} else {
			arrow.transform.parent = null;
		}
		horseColor = GetComponentInChildren<Renderer> ().material.color;
		focusScript = GetComponent<ChargeBarScript> ();
	}
	
	// Update is called once per frame
	void Update () {
		if (photonView.isMine) {
			Vector3 screenPos = cam.WorldToScreenPoint (transform.position);
			arrow.transform.position = new Vector3 (transform.position.x, arrow.transform.position.y, transform.position.z);

			if (screenPos.x < cam.pixelWidth * .75f && screenPos.x > cam.pixelWidth * .25f
				&& screenPos.y < cam.pixelHeight && screenPos.y > 0f) {
				checkMovement ();
//				panel.GetComponent<Image> ().color = good;
				focusScript.inFocus = true;
			} else {
//				panel.GetComponent<Image> ().color = bad;
				focusScript.inFocus = false;
				chargeTimer = 0;
				checkRotation ();
			}
		} else {
			if(arrow){
				arrow.SetActive(false);
				Destroy(arrow);
			}
		}
	}

	public void checkRotation(){
		Vector3 launchDir = cam.transform.forward;
		launchDir.y = 0;
		launchDir.Normalize ();
		arrow.transform.LookAt (arrow.transform.position + launchDir);

		if (rigidbody.velocity.magnitude < 2) {
			animController.SetBool("Running", false);
			if (rigidbody.velocity != Vector3.zero) {
				rigidbody.velocity = Vector3.zero;
				rigidbody.angularVelocity = Vector3.zero;
			} else {
				transform.LookAt (transform.position + launchDir);
				
			}
		} else {
			transform.LookAt (transform.position + rigidbody.velocity);
		}

	}

	public void checkMovement(){
		if (livesLeft <= 0) {
			gameObject.SetActive(false);
			arrow.SetActive(false);
		}
		if (stunned) {
			Debug.Log("stunned");
			waitTimer -= Time.deltaTime;
			if(waitTimer <= 0){
				if(blinksLeft > 0){
					//GetComponentInChildren<Renderer>().enabled = !GetComponentInChildren<Renderer>().enabled;
					if(GetComponentInChildren<Renderer>().material.color == horseColor){
						GetComponentInChildren<Renderer>().material.color = Color.red;
					}
					else{
						GetComponentInChildren<Renderer>().material.color = horseColor;
					}
					waitTimer = stunTime;
					blinksLeft--;
					animController.SetBool("Hit", false);
                }
				else{
					GetComponentInChildren<Renderer>().material.color = horseColor;
					
					if(livesLeft > 0){
						stunned = false;
					}
//					else{
//						gameObject.SetActive(false);
//						arrow.SetActive(false);
//					}
				}
			}
		} else {
			if(invincible){
				if(!shield.GetActive()){
					shield.SetActive(true);
				}
				invincibilityTimer -= Time.deltaTime;
				if(invincibilityTimer <= 0){
					invincible = false;
					shield.SetActive(false);
				}
			}
			if(instaCharge){
				instaChargeTimer -= Time.deltaTime;
				if(instaChargeTimer <= 0){
					instaCharge = false;
				}
			}
			checkRotation();
		
			if (Input.GetKeyDown (KeyCode.Space) || (Input.touchCount > 0 && Input.GetTouch (0).phase == TouchPhase.Began)) {
				chargeTimer = 0;
				animController.SetBool("Charging", true);
			}
			if (Input.GetKey (KeyCode.Space) || (Input.touchCount > 0 
				&& (Input.GetTouch (0).phase == TouchPhase.Stationary || Input.GetTouch (0).phase == TouchPhase.Moved))) {
				if(instaCharge){
					chargeTimer = 2;
				}
				else{
					chargeTimer += Time.deltaTime;
				}
			}
			if (Input.GetKeyUp (KeyCode.Space) || (Input.touchCount > 0 && Input.GetTouch (0).phase == TouchPhase.Ended)) {
				animController.SetBool("Running", true);
				animController.SetBool("Charging", false);
				Vector3 launchDir = cam.transform.forward;
				launchDir.y = 0;
				launchDir.Normalize ();
				transform.LookAt (transform.position + launchDir);
				rigidbody.velocity += launchDir * Mathf.Min (chargeTimer, 2) * 100;
				chargeTimer = 0;
			}
		}
	}

	public void hit(){
		if (!invincible && !stunned) {
			livesLeft--;
			animController.SetBool("Hit", true);
			blinksLeft = 3;
			waitTimer = stunTime;
			stunned = true;
		}
	}

	void OnTriggerEnter(Collider collider){
		GameObject obj = collider.gameObject;
		if (obj.tag == "PowerUp") {
			PowerupScript powerupscript = obj.GetComponent<PowerupScript>();
			if (powerupscript.state == 1){
				powerupscript.state = 0;
				invincibilityTimer = 5.0f;
				invincible = true;
				shield.SetActive(true);
				print ("invincible");
			}
			else if(powerupscript.state == 2){
				powerupscript.state = 0;
				instaChargeTimer = 5.0f;
				instaCharge = true;
				print ("instant charge");
			}
		}
	}

	private void OnPhotonSerializeView(PhotonStream stream, PhotonMessageInfo info){
		if (stream.isWriting) {
			stream.SendNext (rigidbody.position);
			stream.SendNext (rigidbody.rotation);
			stream.SendNext(playerID);
			stream.SendNext (GetComponentInChildren<Renderer>().enabled);
			Color c = GetComponentInChildren<Renderer>().material.color;
			Vector3 tempcolor = new Vector3(c.r, c.g, c.b);
			stream.SendNext (tempcolor);
			stream.SendNext (c.a);
			stream.SendNext (invincible);
			stream.SendNext (livesLeft);
		} else {
			rigidbody.position = (Vector3)stream.ReceiveNext ();
			rigidbody.rotation = (Quaternion)stream.ReceiveNext();
			playerID = (int)stream.ReceiveNext();
			GetComponentInChildren<Renderer>().enabled = (bool)stream.ReceiveNext();
			Vector3 tempcolor = (Vector3)stream.ReceiveNext();
			GetComponentInChildren<Renderer>().material.color = new Color(tempcolor.x,tempcolor.y,tempcolor.z,(float)stream.ReceiveNext ());
			invincible = (bool)stream.ReceiveNext();
//			shield.SetActive(invincible);
			livesLeft = (int)stream.ReceiveNext();
		}
	}

}

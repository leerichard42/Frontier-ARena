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
	public float blinksLeft = 4;
	public float livesLeft = 3;
	public bool invincible = false;
	public float invincibilityTimer;
	public bool instaCharge = false;
	public float instaChargeTimer;
	public GameObject shield;

	void Start () {
		GameObject gameManager = GameObject.FindGameObjectWithTag ("GameManager");
		GameManager gameManagerScript = (GameManager)gameManager.GetComponent (typeof(GameManager));
		if (photonView.isMine) {
			playerID = PhotonNetwork.player.ID;//gameManagerScript.unusedID;
		}
		//gameManagerScript.updateID ();
		cam = GameObject.Find("Camera").GetComponent<Camera>();
		chargeTimer = 0;
		waitTimer = 0;
		panel = GameObject.FindGameObjectWithTag("MainPanel");
		panel.GetComponent<Image>().color = bad;
		shield = transform.FindChild ("Shield").gameObject;
		shield.SetActive (false);
	}
	
	// Update is called once per frame
	void Update () {
		if (photonView.isMine) {
			Vector3 screenPos = cam.WorldToScreenPoint (transform.position);
			
			if (screenPos.x < cam.pixelWidth * .75f && screenPos.x > cam.pixelWidth * .25f
				&& screenPos.y < cam.pixelHeight * .75f && screenPos.y > cam.pixelHeight * .25f) {
				checkMovement ();
				panel.GetComponent<Image> ().color = good;
			} else {
				panel.GetComponent<Image> ().color = bad;
				chargeTimer = 0;
			}
		}
	}

	public void checkMovement(){
		if (stunned) {
			Debug.Log("stunned");
			waitTimer -= Time.deltaTime;
			if(waitTimer <= 0){
				if(blinksLeft > 0){
					GetComponentInChildren<Renderer>().enabled = !GetComponentInChildren<Renderer>().enabled;
					//photonView.RPC("InvertRenderer",PhotonTargets.AllBufferedViaServer,playerID);
					waitTimer = stunTime;
					blinksLeft--;
                }
				else{
					livesLeft--;
					if(livesLeft > 0){
						stunned = false;
						GetComponentInChildren<Renderer>().enabled = true;
					}
					else{
						gameObject.SetActive(false);
					}
				}
			}
		} else {
			if(invincible){
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
			if (rigidbody.velocity.magnitude < 1) {
				if (rigidbody.velocity != Vector3.zero) {
					rigidbody.velocity = Vector3.zero;
					rigidbody.angularVelocity = Vector3.zero;
				} else {
					Vector3 launchDir = cam.transform.forward;
					launchDir.y = 0;
					launchDir.Normalize ();
					transform.LookAt (transform.position + launchDir);
				
				}
			} else {
				transform.LookAt (transform.position + rigidbody.velocity);
			}
		
			if (Input.GetKeyDown (KeyCode.Space) || (Input.touchCount > 0 && Input.GetTouch (0).phase == TouchPhase.Began)) {
				chargeTimer = 0;
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
				Vector3 launchDir = cam.transform.forward;
				launchDir.y = 0;
				launchDir.Normalize ();
				transform.LookAt (transform.position + launchDir);
				rigidbody.velocity += launchDir * Mathf.Min (chargeTimer, 2) * 50;
				chargeTimer = 0;
			}
		}
	}

	public void hit(){
		if (!invincible && !stunned) {
			blinksLeft = 3;
			waitTimer = stunTime;
			stunned = true;
		}
	}

	void OnTriggerEnter(Collider collider){
		GameObject obj = collider.gameObject;
		if (obj.tag == "Invincibility") {
			invincibilityTimer = 5.0f;
			invincible = true;
			shield.SetActive(true);
            Destroy(obj);
        }

		if (obj.tag == "Charge") {
			instaChargeTimer = 5.0f;
			instaCharge = true;
			Destroy(obj);
		}
	}

	private void OnPhotonSerializeView(PhotonStream stream, PhotonMessageInfo info){
		if (stream.isWriting) {
			stream.SendNext (rigidbody.position);
			stream.SendNext (rigidbody.rotation);
			stream.SendNext(playerID);
			stream.SendNext (GetComponentInChildren<Renderer>().enabled);
		} else {
			rigidbody.position = (Vector3)stream.ReceiveNext ();
			rigidbody.rotation = (Quaternion)stream.ReceiveNext();
			playerID = (int)stream.ReceiveNext();
			GetComponentInChildren<Renderer>().enabled = (bool)stream.ReceiveNext();
		}
	}

	[RPC] void InvertRenderer(int id){
		GameObject[] players = GameObject.FindGameObjectsWithTag ("Player");
		foreach(GameObject player in players){
			PlayerManager playerScript = (PlayerManager) player.GetComponent(typeof(PlayerManager));
			if(playerScript.playerID == id){
				player.GetComponentInChildren<Renderer>().enabled = !player.GetComponentInChildren<Renderer>().enabled;
				break;
			}
		}
	}
}

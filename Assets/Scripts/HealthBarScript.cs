using UnityEngine;
using System.Collections;

public class HealthBarScript : MonoBehaviour {

	public Texture2D HealthBarTexture;
	private PlayerManager player;
	private Vector3 screenPoint;

	void Start(){
//		player = transform.GetComponentInParent<PlayerManager> ();
		player = GameObject.Find ("Player").GetComponent < PlayerManager> ();
	}

	void OnGUI () {
//		if (player && player.health > 0) {
//			GUI.DrawTexture(new Rect(0, 0, Screen.width * player.health/100, 50), HealthBarTexture, ScaleMode.StretchToFill, true, 0);
//		}
	}
}

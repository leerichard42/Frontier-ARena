using UnityEngine;
using System.Collections;

public class ChargeBarScript : MonoBehaviour {

	public Texture2D ChargeBarTexture;
	private PlayerManager player;
	private Vector3 screenPoint;

	void Start(){
		player = gameObject.GetComponent < PlayerManager> ();
	}

	void OnGUI () {
		if (player) {
			if (player.chargeTimer > 0) {
				GUI.DrawTexture (new Rect (0, Screen.height - 50, Screen.width * player.chargeTimer / 2, 50), ChargeBarTexture, ScaleMode.StretchToFill, true, 0);
			}
		}
		if (player.livesLeft > 0) {
				GUI.DrawTexture (new Rect (10, 10, 25, 25), ChargeBarTexture, ScaleMode.StretchToFill, true, 0);
		}
		if (player.livesLeft > 1) {
			GUI.DrawTexture (new Rect (45, 10, 25, 25), ChargeBarTexture, ScaleMode.StretchToFill, true, 0);
		}
		if (player.livesLeft > 2) {
			GUI.DrawTexture (new Rect (80, 10, 25, 25), ChargeBarTexture, ScaleMode.StretchToFill, true, 0);
		}
	}
}

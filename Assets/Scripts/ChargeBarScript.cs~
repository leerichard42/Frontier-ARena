using UnityEngine;
using System.Collections;

public class ChargeBarScript : MonoBehaviour {
	public Texture2D ChargeBarTexture;
	public Texture2D FocusRed;
	public Texture2D FocusGreen;
	public Texture2D ChargeOrange;
	public Texture2D ChargeGreen;
	private PlayerManager player;
	private Vector3 screenPoint;
	public bool inFocus;

	void Start(){
		player = gameObject.GetComponent < PlayerManager> ();
	}

	void OnGUI () {
		if (player) {
			if (player.chargeTimer > 0) {
				float chargeValue = Mathf.Min(player.chargeTimer, 2) / 2;
				drawCharge(1 - chargeValue);
//				GUI.DrawTexture (new Rect (0, Screen.height - 50, Screen.width * player.chargeTimer / 2, 50), ChargeBarTexture, ScaleMode.StretchToFill, true, 0);
			}
		}

		if (inFocus) {
			drawFocus(FocusGreen);
		} else {
			drawFocus(FocusRed);
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

	public void drawFocus(Texture2D focus){
		GUI.DrawTexture(new Rect(Screen.width / 2 - Screen.height / 2, 0, 50, 50), focus, ScaleMode.StretchToFill, true, 0);
		GUI.DrawTexture(new Rect(Screen.width / 2 - Screen.height / 2, Screen.height, 50, - 50), focus, ScaleMode.StretchToFill, true, 0);
		GUI.DrawTexture(new Rect(Screen.width / 2 + Screen.height / 2, 0, -50, 50), focus, ScaleMode.StretchToFill, true, 0);
		GUI.DrawTexture(new Rect(Screen.width / 2 + Screen.height / 2, Screen.height, -50, -50), focus, ScaleMode.StretchToFill, true, 0);
	}

	public void drawCharge(float charge){
		if (charge > 0) {
			GUI.DrawTexture (new Rect (Screen.width / 2 - (50) - ((Screen.width / 2) - 50)*charge, Screen.height / 2 - (50) - ((Screen.height / 2) - 50)*charge, 50, 50), ChargeOrange, ScaleMode.StretchToFill, true, 0);
			GUI.DrawTexture (new Rect (Screen.width / 2 - (50) - ((Screen.width / 2) - 50)*charge, Screen.height / 2 + (50) + ((Screen.height / 2) - 50)*charge, 50, - 50), ChargeOrange, ScaleMode.StretchToFill, true, 0);
			GUI.DrawTexture (new Rect (Screen.width / 2 + (50) + ((Screen.width / 2) - 50)*charge, Screen.height / 2 - (50) - ((Screen.height / 2) - 50)*charge, -50, 50), ChargeOrange, ScaleMode.StretchToFill, true, 0);
			GUI.DrawTexture (new Rect (Screen.width / 2 + (50) + ((Screen.width / 2) - 50)*charge, Screen.height / 2 + (50) + ((Screen.height / 2) - 50)*charge, -50, -50), ChargeOrange, ScaleMode.StretchToFill, true, 0);
		} else {
			GUI.DrawTexture (new Rect (Screen.width / 2 - (50) - ((Screen.width / 2) - 50)*charge, Screen.height / 2 - (50) - ((Screen.height / 2) - 50)*charge, 50, 50), ChargeGreen, ScaleMode.StretchToFill, true, 0);
			GUI.DrawTexture (new Rect (Screen.width / 2 - (50) - ((Screen.width / 2) - 50)*charge, Screen.height / 2 + (50) + ((Screen.height / 2) - 50)*charge, 50, - 50), ChargeGreen, ScaleMode.StretchToFill, true, 0);
			GUI.DrawTexture (new Rect (Screen.width / 2 + (50) + ((Screen.width / 2) - 50)*charge, Screen.height / 2 - (50) - ((Screen.height / 2) - 50)*charge, -50, 50), ChargeGreen, ScaleMode.StretchToFill, true, 0);
			GUI.DrawTexture (new Rect (Screen.width / 2 + (50) + ((Screen.width / 2) - 50)*charge, Screen.height / 2 + (50) + ((Screen.height / 2) - 50)*charge, -50, -50), ChargeGreen, ScaleMode.StretchToFill, true, 0);
		}
	}
}

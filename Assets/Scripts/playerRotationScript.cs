using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class playerRotationScript : MonoBehaviour {
	GameObject player;
	Camera camera;
	GameObject panel;
	Color good = new Color(1f,1f,1f,50f/255f);
	Color bad = new Color(77f/55f,77f/255f,77f/255f,100f/255f);

	// Use this for initialization
	void Start () {
		player = GameObject.FindGameObjectWithTag("Player");
		camera = this.transform.GetComponentInChildren<Camera>();
		panel = GameObject.FindGameObjectWithTag("MainPanel");
		panel.GetComponent<Image>().color = bad;
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 screenPos = camera.WorldToScreenPoint(player.transform.position);

		if (screenPos.x < camera.pixelWidth * .75f && screenPos.x > camera.pixelWidth * .25f
		    && screenPos.y < camera.pixelHeight * .75f && screenPos.y > camera.pixelHeight * .25f){
			player.GetComponent<PlayerManager>().checkMovement();
			panel.GetComponent<Image>().color = good;
		}
		else{
			panel.GetComponent<Image>().color = bad;
		}
	}
}

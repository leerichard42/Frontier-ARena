using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CustomInput : MonoBehaviour {
	static Dictionary<string,float> inputs = new Dictionary<string, float>();

	// Use this for initialization
	void Start () {
		SetAxis ("Horizontal", 0);
		SetAxis ("Vertical", 0);
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.touchCount == 0) {
			SetAxis ("Horizontal", Input.GetAxis ("Horizontal"));
			SetAxis ("Vertical", Input.GetAxis ("Vertical"));
		}
	}

	static public float GetAxis(string axis){
		if(!inputs.ContainsKey(axis)){
			inputs.Add(axis, 0);
		}
		
		return inputs[axis];
	}
	
	static public void SetAxis(string axis, float value){
		if(!inputs.ContainsKey(axis)){
			inputs.Add(axis, 0);
		}
		
		inputs[axis] = value;
	}
}

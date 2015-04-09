using UnityEngine;
using System.Collections;

public class  JoystickManager : MonoBehaviour 
{
	private bool isControllable = true;
	public Vector2 movement = Vector2.zero;
	
	private Texture2D padBackgroundTexture;
	private Texture2D padControllerTexture;
	private Rect padBackgroundRect = new Rect(0,0, 100, 100);
	private Rect padControllerRect = new Rect(0,0, 100, 100);

	private Vector2 padBackgroundPosition = Vector2.zero;
	private Vector2 padControllerPosition = Vector2.zero;
	private Vector2 padBackgroundPositionStart = Vector2.zero;
	private Vector2 padControllerPositionStart = Vector2.zero;
	private const float padRadius = 50.0f;
	
	private bool isMovingFinger = false;
	private bool mouseDown = false;
	
	public void Awake()
	{
		padBackgroundTexture = new Texture2D(1,1);
		padBackgroundTexture.SetPixel(0,0, new Color(0f,0f,0f, 0.5f));
		padBackgroundTexture.Apply();
		
		padControllerTexture = new Texture2D(1,1);
		padControllerTexture.SetPixel(0,0, new Color(1f,1f,1f));
		padControllerTexture.Apply();

		padBackgroundPosition = new Vector2(Screen.width / 8.0f, Screen.height * 4.0f / 5.0f);
		padControllerPosition = padBackgroundPosition;
	}
	
	public void Update()
	{
		checkTouch ();
		
		Vector2 direction = (padControllerPosition - padBackgroundPosition);
		float distance = Vector2.Distance(padControllerPosition, padBackgroundPosition);
		
		if (padRadius/distance > 3.5f) movement = Vector2.zero;
		else
		{
			movement = direction.normalized;
			if (padRadius/distance > 1.5f) movement /= 2.0f;
		}
		CustomInput.SetAxis ("Horizontal", movement.x);
		CustomInput.SetAxis ("Vertical", -1 * movement.y);
	}
	
	public void checkTouch(){
		if (isControllable && Input.touchCount > 0)
		{
			Touch touch = Input.touches[0];
			Vector2 touchPosition = new Vector2(touch.position.x, Screen.height - touch.position.y);

			switch (touch.phase)
			{
			case TouchPhase.Began :
				padBackgroundPosition = touchPosition;
//				if(Vector2.Distance(touchPosition, padBackgroundPosition) < padRadius){
					isMovingFinger = true;
					padControllerPosition = touchPosition;
//				}
				break;
				
			case TouchPhase.Moved :
				padControllerPosition = touchPosition;
				float padsDistance = Vector2.Distance(padBackgroundPosition, padControllerPosition);
				if (padsDistance > padRadius)
				{
					Vector2 padDirection = padControllerPosition - padBackgroundPosition;
					float t = padRadius/padsDistance;
					padBackgroundPosition = Vector2.Lerp(padControllerPosition, padBackgroundPosition, t);
				}
				break;
				
			case TouchPhase.Stationary :
				break;
				
			case TouchPhase.Canceled :
				isMovingFinger = false;
				padBackgroundPosition = padControllerPosition;
				break;
				
			case TouchPhase.Ended :
				isMovingFinger = false;
				padBackgroundPosition = padControllerPosition;
				break;
			}
		}
	}
	
	public void SetIsControllable(bool isControllable)
	{
		isControllable = isControllable;
	}
	
	public bool GetIsControllable()
	{
		return isControllable;
	}
	
	public void OnGUI()
	{
//		if (isMovingFinger && isControllable)
//		{
			Rect backgroundRect = new Rect(
				padBackgroundPosition.x - (padBackgroundRect.width/2.0f),
				padBackgroundPosition.y - (padBackgroundRect.height/2.0f),
				padBackgroundRect.width,
				padBackgroundRect.height
				);
			
			Rect controllerRect = new Rect(
				padControllerPosition.x - (padControllerRect.width/2.0f),
				padControllerPosition.y - (padControllerRect.height/2.0f),
				padControllerRect.width,
				padControllerRect.height
				);
			
			GUI.DrawTexture(backgroundRect, padBackgroundTexture);
			GUI.DrawTexture(controllerRect, padControllerTexture);
//		}
	}
}
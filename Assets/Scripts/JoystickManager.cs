using UnityEngine;
using System.Collections;

public class  JoystickManager : MonoBehaviour 
{
	private bool isControllable = true;
	public Vector2 movement = Vector2.zero;
	
	private Texture2D padBackgroundTexture;
	private Texture2D padControllerTexture;
	private Rect padBackgroundRect;
	private Rect padControllerRect;
	
	private Vector2 padBackgroundPosition = Vector2.zero;
	private Vector2 padControllerPosition = Vector2.zero;
	private float padRadius;
	private Vector2 moveTouchPosition;
	
	private bool isMovingFinger = false;
	private bool mouseDown = false;
	
	public PlayerManager currentPlayer;
	public Vector2 startAttackTouch;
	public float attackTimer;
	public float lightAttackTime = 0.3f;
	
	public void Awake()
	{
		padRadius = Screen.width / 30.0f;
		padBackgroundRect = new Rect (0, 0, padRadius * 2, padRadius * 2);
		padControllerRect = new Rect (0, 0, padRadius * 2, padRadius * 2);
		
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
		
		Vector2 direction = (moveTouchPosition - padBackgroundPosition);
		float distance = Vector2.Distance(moveTouchPosition, padBackgroundPosition);
		
		if (distance < padRadius) movement = Vector2.zero;
		else
		{
			movement = direction.normalized;
		}
		CustomInput.SetAxis ("Horizontal", movement.x);
		CustomInput.SetAxis ("Vertical", -1 * movement.y);
	}
	
	public void checkTouch(){
		if (isControllable)
		{
			checkMoveTouch();
			checkAttackTouch();
		}
	}
	
	void checkMoveTouch(){
		if (Input.touchCount > 0) {
			Touch touch = Input.touches [0];
			Vector2 touchPosition = new Vector2 (touch.position.x, Screen.height - touch.position.y);
			moveTouchPosition = touchPosition;
			switch (touch.phase) {
			case TouchPhase.Began:
				padBackgroundPosition = touchPosition;
				isMovingFinger = true;
				padControllerPosition = touchPosition;
				break;
				
			case TouchPhase.Moved:
				Vector2 padDirection = touchPosition - padBackgroundPosition;
				float padDistance = padDirection.magnitude;
				padDirection.Normalize ();
				if (padDistance > padRadius) {
					padControllerPosition = padBackgroundPosition + padDirection * padRadius;
				} else {
					padControllerPosition = touchPosition;
				}
				break;
				
			case TouchPhase.Stationary:
				break;
				
			case TouchPhase.Canceled:
				isMovingFinger = false;
				padControllerPosition = padBackgroundPosition;
				break;
				
			case TouchPhase.Ended:
				isMovingFinger = false;
				padControllerPosition = padBackgroundPosition;
				break;
			}
		}
	}

	void checkAttackTouch(){
		if (Input.touchCount > 1) {
			attackTimer += Time.deltaTime;
			Touch touch = Input.touches [1];
			Vector2 touchPosition = new Vector2 (touch.position.x, Screen.height - touch.position.y);
			switch (touch.phase) {
			case TouchPhase.Began:
				attackTimer = 0;
				startAttackTouch = touchPosition;
				break;
				
			case TouchPhase.Moved:
				float distance = Vector2.Distance(touchPosition, startAttackTouch);
				if(distance > (Mathf.Min(Screen.width, Screen.height) / 2.0f)){
					Vector2 direction = (touchPosition - startAttackTouch).normalized;
					currentPlayer.setRotation(direction.x, -direction.y);
					currentPlayer.dashAttack();
					attackTimer = 0;
				}
				break;
				
			case TouchPhase.Stationary:
				if(attackTimer > lightAttackTime){
					currentPlayer.heavyAttack();
				}
				break;
				
			case TouchPhase.Canceled:
				if(attackTimer <= lightAttackTime){
					currentPlayer.lightAttack();
				}
				else{
					currentPlayer.cancelAttack();
				}
				break;
				
			case TouchPhase.Ended:
				if(attackTimer <= lightAttackTime){
					currentPlayer.lightAttack();
				}
				else{
					currentPlayer.cancelAttack();
				}
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
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Walker : MonoBehaviour {

	void Start () {
	}
	
	// Update is called once per frame

	void Update()
	{
		Vector3 targetMovement = Vector3.zero;
		if(Input.GetKeyDown(KeyCode.LeftArrow))
		{

			targetMovement = Vector3.right * -1f; 
		}	

		if(Input.GetKeyDown(KeyCode.RightArrow))
		{
			targetMovement= Vector3.right * 1f; 
		}	

		if(Input.GetKeyDown(KeyCode.UpArrow))
		{
			targetMovement= Vector3.up * 1f; 
		}	

		if(Input.GetKeyDown(KeyCode.DownArrow))
		{
			targetMovement= Vector3.up * -1f; 
		}	

		if(!Physics2D.OverlapCircle(transform.position + targetMovement, 0.1f))
		{
			transform.position = transform.position +  targetMovement;
		}
		
	}
	void OnDrawGizmos()
	{
		Gizmos.color = Color.red;
		Gizmos.DrawSphere(transform.position, 0.1f);
	}
}

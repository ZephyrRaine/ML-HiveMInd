using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Renderer : MonoBehaviour {

	GotoAgent entity;
	// Use this for initialization
	void Start () 
	{
		entity = transform.parent.GetComponentInChildren<GotoAgent>();	
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(transform.position != entity.transform.position)
		{
			transform.Translate((entity.transform.position - transform.position)*0.1f);
		}	
	}

	void OnDrawGizmos()
    {
		if(entity != null)
		{
			Gizmos.color = Color.red;
			Gizmos.DrawSphere(entity.target, 0.5f);
			Gizmos.DrawLine(transform.position, entity.target);
		}
    }
}

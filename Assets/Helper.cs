using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Helper : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	void OnDrawGizmos()
	{
		Gizmos.color = Color.red;
        for (int x = -Screen.width/32; x < Screen.width/32; x ++)
		{
            Gizmos.DrawLine(new Vector3(x-0.5f, -Screen.height/32-0.5f, 0), new Vector3(x-0.5f, Screen.height/32-0.5f, 0));
        }

        for (int y = -Screen.height/32; y < Screen.height/32; y ++)
        {
            Gizmos.DrawLine(new Vector3(-Screen.width/32-0.5f, y-0.5f, 0), new Vector3(Screen.width/32-0.5f, y-0.5f, 0));
        }
    }
}

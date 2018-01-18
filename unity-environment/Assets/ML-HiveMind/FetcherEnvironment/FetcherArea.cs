using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Tilemaps;

public class FetcherArea : GoToArea 
{
	public Transform baseTransform;
	Tilemap tilemapInfos;

	override protected void Start()
	{
		tilemapInfos = tilemap.GetComponent<Tilemap>();
		base.Start();
	} 

	public Vector3 GetNewTarget(Vector3 curTarget, Vector3 curPosition, ref int targetCount)
	{
		if(targetCount < 5)
		{
			targetCount++;
			return curTarget;
		}
		else
		{
			targetCount = 0;
			Vector3 target;
			do
			{
				target = base.GetNewTarget(curTarget, curPosition);
			} while (target == baseTransform.position);
			return target;
		}
	}

	public override Vector3 GetNewBase(Vector3 curBasePosition, Vector3 curPosition)
	{
		return baseTransform.position;
	}

    [ContextMenu ("Compute size")]
	public void PrintMapSize()
	{
		BoundsInt area = new BoundsInt((int)tilemap.bounds.min.x, (int)tilemap.bounds.min.y, (int)tilemap.bounds.min.z, 
		(int)tilemap.bounds.size.x, (int)tilemap.bounds.size.y, 1);
		Debug.Log(area);
		Debug.Log(area.center);
	}
}

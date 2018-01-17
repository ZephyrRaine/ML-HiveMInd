using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FetcherArea : GoToArea 
{
	public Transform baseTransform;

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
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GotoAgent : Agent 
{
    public GoToArea area;
    public Vector3 target;

    public virtual float GetTileIndex(Vector3 position)
    {
        if(target == position)
            return 2f;
		else if(Physics2D.OverlapCircle(position, 0.1f))
            return 1f;
		else
		    return 0f;
    } 

    public override List<float> CollectState()
	{
        List<float> state = new List<float>();

        //  Debug.Log("\n");

        state.Add(target.x - transform.position.x);
    	state.Add(target.y - transform.position.y);
        // Debug.Log("Distance : " + state[0] + " - " + state[1]);
        for (int y = 1; y >= -1; y--)
		{
            for (int x = -1; x <= 1; x++)
			{
				if(x!=0 || y!=0)
				{
					state.Add(GetTileIndex(transform.position + new Vector3(x, y, 0)));
				}
            }
        }

        //  Debug.Log(string.Format("{0},{1},{2}", state[2], state[3], state[4]));
        //  Debug.Log(string.Format("{0},X,{1}", state[5], state[6]));
        //  Debug.Log(string.Format("{0},{1},{2}", state[7], state[8], state[9]));

        return state;
    }
    public void MoveAgent(float[] act)
    {
        int movement = Mathf.FloorToInt(act[0]);
        Vector3 targetMovement = Vector3.zero;
        if (movement == 1) { targetMovement = Vector3.right * -1f; }
        if (movement == 2) { targetMovement = Vector3.right * 1f; }
        if (movement == 3) { targetMovement = Vector3.up * 1f; }
        if (movement == 4) { targetMovement = Vector3.up * -1f; }
        
		if(targetMovement == Vector3.zero)
		{
			reward = -0.01f;
		}
		else
		{
            Collider2D c;
			if((c = Physics2D.OverlapCircle(transform.position + targetMovement, 0.1f)) && !c.isTrigger)
			{
                reward = -0.01f;
			}
			else
			{
                transform.position = transform.position +  targetMovement;
            }
		}
    }

	public override void AgentStep(float[] act)
	{
        reward = -0.001f;
		
        MoveAgent(act);

		if(transform.position == target)
		{
            reward = 1f;
            done = true;
        }
	}

	public override void AgentReset()
	{
        target = area.GetNewTarget(target, transform.position);
    }
}

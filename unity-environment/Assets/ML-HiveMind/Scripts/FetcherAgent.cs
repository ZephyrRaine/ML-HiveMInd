using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FetcherAgent : GotoAgent 
{
	Vector3 basePosition;
	int charging = 0;

    public override float GetTileIndex(Vector3 position)
    {
		Collider2D c;
		if(c = Physics2D.OverlapCircle(position, 0.1f))
		{
			// Debug.Log(c);
			if(c.name == "Base")
				return 3f;
			else if(c.name == "Gold")
				return 2f;
			else
				return 1f;
		}
		else
		    return 0f;
    }
    
    public override List<float> CollectState()
	{
		state.Add(charging);

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

	public override void AgentStep(float[] act)
	{
        //reward = -0.0001f;
		
        MoveAgent(act);

		if(charging == 0 && GetTileIndex(transform.position) == 2)
		{
            reward = 0.5f;
			charging = 1;
        }
		else if(charging == 1 && GetTileIndex(transform.position) == 3)
		{
			charging = 0;
			reward = 0.5f;
			done = true;
		}

		// Monitor.Log("charging", charging, MonitorType.text , transform);
	}

	public override void AgentReset()
	{
		// FetcherArea f = (FetcherArea)area;
		// target = f.GetNewTarget(target, transform.position, ref targetCount);
		// basePosition = f.GetNewBase(basePosition, transform.position);
    }
}

﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TreeEditor;
public class FetcherAgent : GotoAgent 
{
	TreeData lol;
	Vector3 basePosition;
	int charging = 0;

	new Vector3? target;

	void Start()
	{
		transform.position = ((FetcherArea)area).baseTransform.position;
	}
    protected override TILE_INDEX GetTileIndex(Vector3 position)
    {
		Collider2D c;
		if(c = Physics2D.OverlapCircle(position, 0.1f))
		{
			// Debug.Log(c);
			if(c.name == "Base")
				return TILE_INDEX.BASE;
			else if(c.GetComponent<GoldMine>() && c.GetComponent<GoldMine>().stock > 0)
				return TILE_INDEX.GOLD;
			else
				return TILE_INDEX.WALL;
		}
		else
		    return TILE_INDEX.NONE;
    }
    
    public override List<float> CollectState()
	{
		state.Add(charging);
		state.Add(basePosition.x - transform.position.x);
		state.Add(basePosition.y - transform.position.y);

		
		if(target.HasValue)
		{
			state.Add(1f);
 			state.Add(target.Value.x - transform.position.x);
			state.Add(target.Value.y - transform.position.y);
		}
		else
		{
			state.Add(0f);
			state.Add(0f);
			state.Add(0f);
		}
        // Debug.Log("Distance : " + state[0] + " - " + state[1]);
        for (int y = 1; y >= -1; y--)
		{
            for (int x = -1; x <= 1; x++)
			{
				state.Add((float)GetTileIndex(transform.position + new Vector3(x, y, 0)));
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

		if(charging == 0 && GetTileIndex(transform.position) == TILE_INDEX.GOLD)
		{
            // Debug.Log("onamine");
			Collider2D c = Physics2D.OverlapCircle(transform.position, 0.1f);
			GoldMine mine;
			if(c != null)
			{
				mine = c.GetComponent<GoldMine>();
				if(mine.TryLoad())
				{
					if(mine.stock == 0)
					{
						target = null;
					}
					else
					{
						target = mine.transform.position;
					}
					reward = 0.5f;
					charging = 1;
				}
			}
        }
		else if(charging == 1 && GetTileIndex(transform.position) == TILE_INDEX.BASE)
		{
			charging = 0;
			reward = 0.5f;
			done = true;
		}

		// Monitor.Log("charging", charging, MonitorType.text , transform);
	}

	public override void AgentReset()
	{
		// target = f.GetNewTarget(target, transform.position, ref targetCount);
		FetcherArea f = (FetcherArea)area;
		basePosition = f.GetNewBase(basePosition, transform.position);
    }
}

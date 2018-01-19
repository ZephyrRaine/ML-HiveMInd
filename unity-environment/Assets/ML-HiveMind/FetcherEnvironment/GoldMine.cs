using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GoldMine : MonoBehaviour {

	public int minStock;
	public int maxStock;
    public int stock;
    public Action<GoldMine> Dried;

    // Use this for initialization
    void Start ()
	{
		stock = UnityEngine.Random.Range(minStock, maxStock);	
	}
    
    public bool TryLoad()
    {
        if(stock > 0)
		{
            stock--;
        	// Debug.Log(stock);
			if(stock == 0)
                Dried(this);
            return true;
        }
        return false;
    }
}

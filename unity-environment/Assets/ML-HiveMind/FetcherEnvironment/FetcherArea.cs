using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Tilemaps;

public class FetcherArea : GoToArea 
{
	public Transform baseTransform;
	Tilemap tilemapInfos;

    List<GoldMine> mines;
    public int minStartMines;
    public int maxStartMines;

    public int maxTotalMines;

    public GoldMine minePrefab;
    override protected void Start()
	{
		baseTransform.position = GetRandomPosition();
		tilemapInfos = tilemap.GetComponent<Tilemap>();
        mines = new List<GoldMine>();
        for (int i = 0; i <= Random.Range(minStartMines, maxStartMines); i++)
		{
            AddNewMine();
        }
        base.Start();
    } 

	void AddNewMine()
	{
        GoldMine mine = Instantiate(minePrefab, GetRandomPosition(), Quaternion.identity, transform);
        mine.Dried += CheckMines;
        mines.Add(mine);
    }

	void CheckMines(GoldMine mine)
	{
        mine.Dried -= CheckMines;
		mines.Remove(mine);
		Destroy(mine.gameObject);
		AddNewMine();
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

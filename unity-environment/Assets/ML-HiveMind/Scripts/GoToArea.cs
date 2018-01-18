using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Tilemaps;

public class GoToArea : MonoBehaviour {

    public TilemapCollider2D tilemap;
    List<Vector3> targets;

    protected virtual void Start()
    {
        targets = new List<Vector3>();
    }
    public virtual Vector3 GetNewTarget(Vector3 curTarget, Vector3 curPosition)
    {
        if(targets.Contains(curTarget))
        {
            targets.Remove(curTarget);
        }
        Vector3 randomTarget;
        do
        {
            randomTarget = new Vector3(
            Mathf.FloorToInt(tilemap.bounds.center.x) + Random.Range(-Mathf.FloorToInt(tilemap.bounds.extents.x) +1, Mathf.FloorToInt(tilemap.bounds.extents.x) - 1),
            Mathf.FloorToInt(tilemap.bounds.center.y) + Random.Range(-Mathf.FloorToInt(tilemap.bounds.extents.y) +1, Mathf.FloorToInt(tilemap.bounds.extents.y) - 1),
            0);
        } while(randomTarget == curTarget || randomTarget == curPosition || Physics2D.OverlapCircle(randomTarget, 0.1f) || targets.Contains(randomTarget));
        
        targets.Add(randomTarget);
        return randomTarget;
    }

    public virtual Vector3 GetNewBase(Vector3 curBasePosition, Vector3 curPosition)
    {
        Debug.LogError("OOPS");
        return Vector3.zero;
    }

    void OnDrawGizmos()
    {
        Color c = Color.green;
        c.a = 0.2f;
        Gizmos.color = c;
        Gizmos.DrawCube(tilemap.bounds.center, (tilemap.bounds.extents-Vector3.one)*2f);
    }
}

using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Liner : MonoBehaviour {

    public float starRatio = 0f;
    public int angleCount = 4;
    public float oranginaHeight = 2f;
    public Transform target;
    LineRenderer lineRenderer;
    public int vertexMax = 50;
    int vertexCount = 0;
    float dist = 0f;
    float distTotal = 0f;
    float distSegment = 0.2f;
    Vector3 previousPosition;
    List<Vector3> positionList;

    // Use this for initialization
    void Start ()
    {
        lineRenderer = GetComponent<LineRenderer>();
        lineRenderer.SetVertexCount(1);
        lineRenderer.SetPosition(0, target.position);
        previousPosition = target.position;
        positionList = new List<Vector3>();
        positionList.Add(target.position);
    }
	
    void AddSegment()
    {
        ++vertexCount;
        lineRenderer.SetVertexCount(vertexCount);
        lineRenderer.SetPosition(vertexCount - 1, target.position);
        positionList.Add(target.position);
    }

	// Update is called once per frame
	void Update ()
    {
        dist = Vector3.Distance(previousPosition, target.position);
        if(dist > distSegment)
        {
            if(vertexCount < vertexMax)
            {
                distTotal += dist;
                lineRenderer.material.SetFloat("_DistTotal", distTotal);
                AddSegment();
            }
            else
            {
                for(int i = 0; i < vertexCount - 1; ++i)
                {
                    Vector3 pos = positionList[i + 1];
                    lineRenderer.SetPosition(i, pos);
                    positionList[i] = pos;
                }
                lineRenderer.SetPosition(vertexCount - 1, target.position);
                positionList[vertexCount - 1] = target.position;
            }
            previousPosition = target.position;
            dist = 0f;
        }
        //Circle
        /*for (int i = 0; i < vertexCount; ++i)
        {
            float angle = (i / (float)(vertexCount - 1)) * Mathf.PI * 2f;
            float radius = 2f + (i % 2 == 0 ? 4f * starRatio : 0f);
            Vector3 pos = new Vector3(Mathf.Cos(angle) * radius, 0f, Mathf.Sin(angle) * radius);
            lineRenderer.SetPosition(i, pos);
        }*/

        //orangina
        /*for (int i = 0; i < vertexCount; ++i)
        {
            float angle = (i / (float)(vertexCount - 1)) * Mathf.PI * 2f;
            angle *= angleCount;
            float ratio = Mathf.Sin((i / (float)(vertexCount - 1)) * Mathf.PI);
            float radius = 2f * ratio;
            Vector3 pos = new Vector3(Mathf.Cos(angle) * radius, 0f, Mathf.Sin(angle) * radius);
            pos.y = oranginaHeight * (i / (float)(vertexCount - 1));
            lineRenderer.SetPosition(i, pos);
        }*/
    }
}

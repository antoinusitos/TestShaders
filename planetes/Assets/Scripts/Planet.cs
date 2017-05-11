using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Planet : MonoBehaviour {

    Vector3 velocity = Vector3.right;
    List<Astre> astreList;

	// Use this for initialization
	void Start ()
    {
       // velocity = new Vector3(Random.RandomRange())
        astreList = new List<Astre>();
        Astre[] astreArray = GameObject.FindObjectsOfType<Astre>();
        foreach(Astre astre in astreArray)
        {
            if(astre.GetInstanceID() != gameObject.GetInstanceID())
            {
                astreList.Add(astre);
            }
        }
    }
	
	// Update is called once per frame
	void Update ()
    {
        Vector3 vector = Vector3.zero;
        foreach(Astre astre in astreList)
        {
            Vector3 normal = Vector3.Normalize(astre.transform.position - transform.position);
            float dist = Vector3.Distance(astre.transform.position, transform.position);
            vector += normal / Mathf.Max(0.1f, dist) * astre.mass;
        }
        velocity += vector;
        velocity = Vector3.ClampMagnitude(velocity, 2.0f);
        transform.position += velocity;

	}
}

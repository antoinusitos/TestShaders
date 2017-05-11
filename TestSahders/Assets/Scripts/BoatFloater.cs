using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoatFloater : MonoBehaviour 
{
    float boatHeight = 0.05f;
    float speed = 4.0f;

    void Update () 
    {
        float newY = Mathf.Sin(Time.realtimeSinceStartup * speed) * boatHeight;
        transform.position += new Vector3(0, newY, 0);
	}
 
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterMovement : MonoBehaviour 
{

    private bool _up = true;
    private float _currentWave = 0.0f;

    public float minWave = 0.0f;
    public float maxWave = 1.0f;
    public float waveSpeed = 2.0f;

	
	void Update () 
    {
        if (_up)
        {
            _currentWave += Time.deltaTime * waveSpeed;
            if(_currentWave >= maxWave)
            {
                _up = false;
            }
        }
        else
        {
            _currentWave -= Time.deltaTime * waveSpeed;
            if (_currentWave <= minWave)
            {
                _up = true;
            }
        }

        transform.position = new Vector3(0.0f, _currentWave, 0.0f);
	}
}

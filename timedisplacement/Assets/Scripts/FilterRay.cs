using UnityEngine;
using System.Collections;

[ExecuteInEditMode]
public class FilterRay : MonoBehaviour
{

    Material material;
    public Texture planetTexture;
    float speed = 10.0f;

    // Creates a private material used to the effect
    void Awake()
    {
        material = new Material(Shader.Find("Hidden/Raymarch"));

        material.SetVector("eye", new Vector3(0.0f, 0.0f, -1.5f));
        material.SetVector("front", new Vector3(0.0f, 0.0f, 1.0f));
        material.SetVector("right", new Vector3(1.0f, 0.0f, 0.0f));
        material.SetVector("up", new Vector3(0.0f, 1.0f, 0.0f));

        material.SetFloat("radiusSphere", 0.5f);
        material.SetTexture("_planetTex", planetTexture);
    }

    void Update()
    {
        material.SetVector("eye", Camera.main.transform.position);
        material.SetVector("front", Camera.main.transform.forward);
        material.SetVector("right", Camera.main.transform.right);
        material.SetVector("up", -Camera.main.transform.up);

        if(Input.GetMouseButton(0))
        {
            Camera.main.transform.position += Camera.main.transform.forward * Time.deltaTime * speed;
        }
        else if (Input.GetMouseButton(1))
        {
            Camera.main.transform.position += -Camera.main.transform.forward * Time.deltaTime * speed;
        }
    }

    // Postprocess the image
    void OnRenderImage(RenderTexture source, RenderTexture destination)
    {
        Graphics.Blit(source, destination, material);
    }
}

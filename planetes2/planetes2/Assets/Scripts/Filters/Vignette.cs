using UnityEngine;
using System.Collections;

[ExecuteInEditMode]
public class Vignette : MonoBehaviour
{
    Material material;
    public Color color;

    // Creates a private material used to the effect
    void Awake()
    {
        material = new Material(Shader.Find("Hidden/Vignette"));
    }

    // Postprocess the image
    void OnRenderImage(RenderTexture source, RenderTexture destination)
    {
        material.SetColor("_Color", color);
        Graphics.Blit(source, destination, material);
    }
}

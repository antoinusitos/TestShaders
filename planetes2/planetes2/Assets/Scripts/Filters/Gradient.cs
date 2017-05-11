using UnityEngine;
using System.Collections;

[ExecuteInEditMode]
public class Gradient : MonoBehaviour
{
    Material material;
    public Color colorA;
    public Color colorB;

    // Creates a private material used to the effect
    void Awake()
    {
        material = new Material(Shader.Find("Hidden/Gradient"));
    }

    // Postprocess the image
    void OnRenderImage(RenderTexture source, RenderTexture destination)
    {
        material.SetColor("_ColorA", colorA);
        material.SetColor("_ColorB", colorB);
        Graphics.Blit(source, destination, material);
    }
}

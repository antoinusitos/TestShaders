using UnityEngine;
using System.Collections;

[ExecuteInEditMode]
public class RGBOffset : MonoBehaviour
{
    Material material;
    public float offset = 0.1f;

    // Creates a private material used to the effect
    void Awake()
    {
        material = new Material(Shader.Find("Hidden/RBGOffset"));
    }

    // Postprocess the image
    void OnRenderImage(RenderTexture source, RenderTexture destination)
    {
        material.SetFloat("_Offset", offset);
        Graphics.Blit(source, destination, material);
    }
}

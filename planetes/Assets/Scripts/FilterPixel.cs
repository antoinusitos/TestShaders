using UnityEngine;
using System.Collections;

[ExecuteInEditMode]
public class FilterPixel : MonoBehaviour {

    Material material;
    public int pixelSize = 64;
    public int ouhPunaise = 100;

	// Use this for initialization
	void Start ()
    {
        material = new Material(Shader.Find("Hidden/Pixel"));
    }
	
	void OnRenderImage(RenderTexture source, RenderTexture destination)
    {
        material.SetFloat("_PixelSize", pixelSize);
        material.SetFloat("_OuhPunaise", ouhPunaise);
        Graphics.Blit(source, destination, material);
    }
}

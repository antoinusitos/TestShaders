Shader "Custom/Planet" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_Glossiness("Smoothness", Range(0,1)) = 0.5
		_Metallic("Metallic", Range(0,1)) = 0.0
	}
	SubShader{
		Tags { "RenderType" = "Opaque" }
		LOD 200

		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard fullforwardshadows vertex:vert

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0

		sampler2D _MainTex;

		struct Input {
			float2 uv_MainTex;
		};

		half _Glossiness;
		half _Metallic;
		fixed4 _Color;

		float hash(float n)
		{
			return frac(sin(n)*43758.5453);
		}

		float noiseIQ(float3 x)
		{
			// The noise function returns a value in the range -1.0f -> 1.0f
			float3 p = floor(x);
			float3 f = frac(x);
			f = f*f*(3.0 - 2.0*f);
			float n = p.x + p.y*57.0 + 113.0*p.z;
			return lerp(lerp(lerp(hash(n + 0.0), hash(n + 1.0), f.x),
				lerp(hash(n + 57.0), hash(n + 58.0), f.x), f.y),
				lerp(lerp(hash(n + 113.0), hash(n + 114.0), f.x),
					lerp(hash(n + 170.0), hash(n + 171.0), f.x), f.y), f.z);
		}

		void vert(inout appdata_full v)
		{
			float t = _Time * 2.0;
			float n = noiseIQ((v.vertex.xyz + float3(0, 2.0*t,t)) * 4.0);
			v.vertex.xyz += v.normal * n * 0.5;
			v.color.rgb = float3(1, 1, 1) * (n * 0.5 + 0.5);
		}

		void surf (Input IN, inout SurfaceOutputStandard o) {
			// Albedo comes from a texture tinted by color
			fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _Color;
			o.Albedo = c.rgb;
			// Metallic and smoothness come from slider variables
			o.Metallic = _Metallic;
			o.Smoothness = _Glossiness;
			o.Alpha = c.a;
		}
		ENDCG
	} 
	FallBack "Diffuse"
}

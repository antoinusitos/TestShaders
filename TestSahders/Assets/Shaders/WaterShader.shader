Shader "Antoine/WaterShader" {
	Properties {
		_MainTex("Albedo (RGB)", 2D) = "white" {}
		_PerlinTex ("Perlin (RGB)", 2D) = "white" {}
		_TileRepetition ("TileRepetition", float) = 5.0
	}
	SubShader 
	{
		Tags { "RenderType"="Opaque" }
		LOD 200
		
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
			#include "Utils.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
				float4 normal : NORMAL;
				float4 color : COLOR;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
				float4 color : COLOR;
				float4 normal : NORMAL;
				float3 viewDir : TEXCOORD1;
			};

			sampler2D _MainTex;
			sampler2D _PerlinTex;
			float4 _MainTex_ST;
			float4 _PerlinTex_ST;
			float _TileRepetition;

			v2f vert(appdata v)
			{
				v2f o;
				float t = _Time * 2.0;
				float n = noiseIQ((v.vertex.xyz + float3(0, t*2.0, t)) * 4.0);

				v.vertex.xyz += v.normal * n * 2.0;

				o.color.r = n;

				o.viewDir = WorldSpaceViewDir(v.vertex);
				o.normal = v.normal;

				o.vertex = mul(UNITY_MATRIX_MVP, v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				o.uv *= _TileRepetition;
				return o;
			}

			fixed4 frag(v2f i) : SV_Target
			{
				float2 uv = i.uv;
				fixed4 glow = float4(1, 1, 1, 1);
				fixed4 water = tex2D(_MainTex, uv);
				float ratio = smoothstep(0.2, 0.8, i.color.r);
				float light = 1 - (dot(normalize(i.viewDir), i.normal) * 5.0);
				fixed4 col = tex2D(_MainTex, i.uv);
				col = lerp(col, glow, light);
				return col;
			}
			ENDCG
		}
	}
}

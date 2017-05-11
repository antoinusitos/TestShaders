Shader "Unlit/Planetv2"
{
	Properties
	{
		_MainTex("Texture", 2D) = "white" {}
		_GrassTex("grass", 2D) = "white" {}
		_WaterTex("water", 2D) = "white" {}
	}
	SubShader
	{
		Tags { "RenderType"="Opaque" }
		LOD 100

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
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
			sampler2D _GrassTex;
			sampler2D _WaterTex;
			float4 _MainTex_ST;
			
			v2f vert (appdata v)
			{
				v2f o;
				float t = _Time * 2.0;
				float n = noiseIQ((v.vertex.xyz + float3(0, t*2.0, t)) * 4.0);
				v.vertex.xyz += v.normal * n * 0.2;

				o.color.r = n;

				o.viewDir = WorldSpaceViewDir(v.vertex);
				o.normal = v.normal;

				o.vertex = mul(UNITY_MATRIX_MVP, v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				float2 uv = i.uv;
				//uv = pixelize(uv, 64.0);

				fixed4 glow = float4(1, 1, 1, 1);
				fixed4 ground = tex2D(_MainTex, uv);
				fixed4 grass = tex2D(_GrassTex, uv);
				fixed4 water = tex2D(_WaterTex, uv);
				float ratio = smoothstep(0.2, 0.8, i.color.r);
				float ratio2 = smoothstep(0.2, 0.4, i.color.r);
				fixed4 col = lerp(lerp(water, ground, ratio2), grass, ratio);
				float light = 1 - (dot(normalize(i.viewDir), i.normal) * 1.4);
				col = lerp(col, glow, light);
				return col;
			}
			ENDCG
		}
	}
}

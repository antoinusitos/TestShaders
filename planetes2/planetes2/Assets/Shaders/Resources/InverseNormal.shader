Shader "Unlit/InverseNormal"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
	}
	SubShader
	{
		Tags { "RenderType"="Opaque" }
		LOD 100
		Cull Off
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			#include "Utils.cginc"
			#include "ClassicNoise2D.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = mul(UNITY_MATRIX_MVP, v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				float n1 = rand(i.uv);
				float n2 = cnoise(i.uv * 100);

				float r = rand(i.uv);
				float g = rand(i.uv);
				float b = rand(i.uv);

				fixed4 col = float4(r, g, b, 1);

				//f(x) = x
				//x - f(x) = 0

				float t = _Time * 4.0;

				//col.rgb *= 0.01 / abs((i.uv.y - 0.5) * 8.0 - sin((i.uv.x + t) * 10.0));

				col.rgb *= 0.01 / n1;
				col.rgb *= 0.01 / n2;				

				return col;
			}
			ENDCG
		}
	}
}

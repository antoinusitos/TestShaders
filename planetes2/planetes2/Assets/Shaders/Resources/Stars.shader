Shader "Hidden/Stars"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
	}
	SubShader
	{
		// No culling or depth
		Cull Off ZWrite Off ZTest Always

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
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

			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = mul(UNITY_MATRIX_MVP, v.vertex);
				o.uv = v.uv;
				return o;
			}
			
			sampler2D _MainTex;

			fixed4 frag (v2f i) : SV_Target
			{
				float n1 = rand(i.uv);
				float n2 = cnoise(i.uv * 100);

				fixed4 col = float4(1, 1, 1, 1);
				
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

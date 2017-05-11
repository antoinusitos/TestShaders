Shader "Hidden/Reflect"
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
				float middleScreen = step(0.5, i.uv.y);
				float2 uvInverse = i.uv;
				uvInverse.y = 1.0 - uvInverse.y;
				
				float2 uvHalf = i.uv;
				uvHalf.y = clamp(uvHalf.y * 2.0 - 1.0, 0.0, 1.0);

				float t = _Time * 4.0;

				float2 offset = cnoise((sqrt(uvHalf.yy) - t) * 20.0) * 0.1;
				offset.y += cnoise((sqrt(uvHalf) - t) * 20.0 )* 0.02;
				uvInverse += offset;

				float2 uv = lerp(i.uv, uvInverse, middleScreen);

				fixed4 col = tex2D(_MainTex, uv);

				return col;
			}
			ENDCG
		}
	}
}

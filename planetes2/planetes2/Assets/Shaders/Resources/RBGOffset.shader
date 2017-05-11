Shader "Hidden/RBGOffset"
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
			float _Offset;

			fixed4 frag (v2f i) : SV_Target
			{
				float2 uv = i.uv;

				float t = _Time * 20.0;
				float piTier = 2.0 * 3.14159 / 3.0;
				float piTwoTier = 4.0 * 3.14159 / 3.0;

				float2 offsetR = float2(cos(t), sin(t)) * _Offset;
				float2 offsetG = float2(cos(piTier + t), sin(piTier + t)) * _Offset;
				float2 offsetB = float2(cos(piTwoTier + t), sin(piTwoTier + t)) * _Offset;
				
				float red = tex2D(_MainTex, uv + offsetR);
				float green = tex2D(_MainTex, uv + offsetG);
				float blue = tex2D(_MainTex, uv + offsetB);
				
				fixed4 col = fixed4(red, green, blue, 1.0);

				return col;
			}
			ENDCG
		}
	}
}

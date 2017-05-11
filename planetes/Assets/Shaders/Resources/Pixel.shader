Shader "Hidden/Pixel"
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
			float _PixelSize;
			float _OuhPunaise;

			fixed4 frag (v2f i) : SV_Target
			{
				float2 uv = i.uv;

				float2 center = uv - float2(0.5, 0.5);
				center.x *= _ScreenParams.x / _ScreenParams.y;
				float angle = atan2(center.y, center.x);
				float dist = length(center);

				uv.x = angle * 0.5;
				uv.y = dist;
				uv = fmod(abs(uv), 1.0);

				float2 pixelSize = float2(_PixelSize, _PixelSize);
				pixelSize.x *= _ScreenParams.x / _ScreenParams.y;
				uv = floor(uv * pixelSize) / pixelSize;

				float t = _Time * 10.0;
				uv.x += noiseIQ(float3(uv.yy * _OuhPunaise, t)) * 0.1;

				fixed4 col = tex2D(_MainTex, uv);

				return col;
			}
			ENDCG
		}
	}
}

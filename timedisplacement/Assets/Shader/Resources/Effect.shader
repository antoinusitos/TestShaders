Shader "Hidden/Effect"
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
			
			float rand(float2 co)
			{
				return frac(sin(dot(co.xy, float2(12.9898, 78.233))) * 43758.5453);
			}

			sampler2D _MainTex;
			sampler2D _BufferTexture;

			fixed4 frag (v2f i) : SV_Target
			{
				float2 uv = i.uv;

				float2 center = uv - float2(0.5, 0.5);
				uv -= center * 0.05;

				float angle = rand(i.uv) * 3.1416;
				float2 offset = float2(cos(angle), sin(angle)) * 0.001;

				uv += offset;
				
				fixed4 video = tex2D(_MainTex, i.uv);

				angle = Luminance(video) * 3.1416 * 2.0;
				offset = float2(cos(angle), sin(angle)) * 0.001;

				uv += offset;

				fixed4 buffer = tex2D(_BufferTexture, uv);

				float t = _Time;

				if (length(center) < 0.005)
				{
					buffer = float4(rand(i.uv + t) * 0.5 + 0.5, rand(i.uv - 1.0) * 0.5 + 0.5, rand(i.uv + 2.0) * 0.5 + 0.5, 1.0);
				}

				float treshold = sin(_Time * 100.0) * 0.5 + 0.5;

				fixed4 col = lerp(buffer, video, step(treshold, distance(video, buffer)));
				return buffer;
			}
			ENDCG
		}
	}
}

﻿Shader "Hidden/ScanLine"
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
				float2 uv = i.uv;

				float t = _Time * 4.0;

				float offset = cnoise((uv.yy + t) * 1000.0);
				float offsetLateral = cnoise((uv.yy + t) * 2.0) * 0.05;

				uv.x += offset * offsetLateral;

				fixed4 col = tex2D(_MainTex, uv);

				return col;
			}
			ENDCG
		}
	}
}

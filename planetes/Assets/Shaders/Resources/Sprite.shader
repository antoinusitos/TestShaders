﻿Shader "Custom/Sprite" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_MainTex ("Texture (RGB)", 2D) = "white" {}
	}
	SubShader {
   		Tags { "Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent" }
   		Pass {
		    Cull Off
	    	Blend SrcAlpha OneMinusSrcAlpha     
			LOD 200
			
			CGPROGRAM
		    #pragma vertex vert
		    #pragma fragment frag   
	    	#include "UnityCG.cginc"   

		    struct v2f {
		        float4 pos : SV_POSITION;
		        float2 uv : TEXCOORD0;
                float4 screenUV : TEXCOORD1;
		    };   

			sampler2D _MainTex;
	    	float4 _MainTex_ST; 
			fixed4 _Color;

			v2f vert (appdata_full v)
			{
		        v2f o;
		        o.pos = mul (UNITY_MATRIX_MVP, v.vertex);
		        o.uv = TRANSFORM_TEX (v.texcoord, _MainTex);
		        o.screenUV = ComputeScreenPos(o.pos);
		        return o;

		    }

		    half4 frag (v2f i) : COLOR
		    {
		    	fixed4 color = tex2D(_MainTex, i.uv);
		        return color;
		    }
			ENDCG
		} 
	}
	FallBack "Unlit/Transparent"
}
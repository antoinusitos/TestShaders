Shader "Hidden/Raymarch"
{
	Properties
	{
		_MainTex("Texture", 2D) = "white" {}
	}
	SubShader
	{
		Pass
		{
			CGPROGRAM
			#pragma vertex vert_img
			#pragma fragment frag
			#pragma target 3.0
			#include "UnityCG.cginc"

			sampler2D _MainTex;
			sampler2D _planetTex;

			//Camera
			float3 eye;
			float3 front;
			float3 right;
			float3 up;

			float radiusSphere;

			#define rayMax 15.0
			#define rayEpsylon 0.001
			#define rayStepMax 32

			float Sphere(float3 p, float radius)
			{
				return length(p) - radius;
			}

			float3 Repeat(float3 p, float cellSize)
			{
				return fmod(abs(p)	, cellSize) - cellSize * 0.5;
			}

			float3 rotateY(float3 v, float t)
			{
				float cost = cos(t);
				float sint = sin(t);
				return float3(v.x * cost + v.z * sint, v.y, -v.x * sint + v.z * cost);
			}

			float reflectance(float3 a, float3 b)
			{
				return dot(normalize(a), normalize(b)*0.5 + 0.5);
			}

			float2 wrapUV(float2 uv)
			{
				return fmod(abs(uv), 1.0);
			}

			float sub(float d1, float d2)
			{
				return max(-d1, d2);
			}

			fixed4 frag(v2f_img i) : SV_Target
			{
				//milieu de l'écran
				float2 uv = i.uv.xy * 2.0 - 1.0;
				uv.x *= _ScreenParams.x / _ScreenParams.y;
				float3 ray = normalize(front + right * uv.x + up * uv.y);

				float3 color = float3(0.0, 0.0, 0.0);

				float stepTotal = 0.0;
				for (int i = 0; i < rayStepMax; ++i)
				{
					float3 position = eye + ray * stepTotal;

					float playerSphere = Sphere(eye - position, 3.0);

					position = rotateY(position, _Time * 0.0f);
					//position.z += _Time * 20.0f;

					position = Repeat(position, 4.0);

					//position.x += sin (position.y * 20.0 + _Time * 100.0f) * 0.1;

					float angleXY = atan2(position.y, position.x);
					float2 sphereUV = float2(angleXY / 3.1416, 1.0 - reflectance(position, eye));
					sphereUV = wrapUV(sphereUV);
					float3 tex = tex2D(_planetTex, sphereUV).rgb;

					float luminance = (tex.r + tex.g + tex.b) / 3.0;

					float planetDist = Sphere(position, radiusSphere + luminance * 0.5);

					float satelitDist = Sphere(position - float3(0.0, 0.5, 0.0), radiusSphere);

					float dist = min(planetDist, satelitDist);

					dist = sub(playerSphere, dist);

					float isSatelit = step(satelitDist, planetDist);

					if (dist < rayEpsylon)
					{
						float3 c = lerp(tex, float3(1.0, 0.0, 0.0), isSatelit);
						color = lerp(c, color, float(i) / float(rayStepMax));
						color = lerp(color, float3(0, 0, 0), stepTotal / rayMax);
						break;
					}
					stepTotal += dist;
				}

				return fixed4(color, 1.0f);
			}
			ENDCG
		}
	}
}

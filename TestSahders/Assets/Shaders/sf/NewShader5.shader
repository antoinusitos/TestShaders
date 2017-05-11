// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32652,y:32650,varname:node_4013,prsc:2|diff-7445-OUT,spec-8051-OUT,normal-1349-OUT;n:type:ShaderForge.SFN_VertexColor,id:1862,x:31749,y:32846,varname:node_1862,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:4463,x:31904,y:32361,ptovrint:False,ptlb:A,ptin:_A,varname:node_4463,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:531,x:31904,y:32556,ptovrint:False,ptlb:B,ptin:_B,varname:node_531,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5fb7986dd6d0a8e4093ba82369dd6a4d,ntxv:0,isnm:False|UVIN-9054-OUT;n:type:ShaderForge.SFN_TexCoord,id:8412,x:31170,y:32986,varname:node_8412,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:9054,x:31419,y:33013,varname:node_9054,prsc:2|A-8412-UVOUT,B-6076-OUT;n:type:ShaderForge.SFN_Vector1,id:6076,x:31170,y:33166,varname:node_6076,prsc:2,v1:8;n:type:ShaderForge.SFN_Lerp,id:7445,x:32213,y:32622,varname:node_7445,prsc:2|A-4463-RGB,B-531-RGB,T-1862-R;n:type:ShaderForge.SFN_Tex2d,id:703,x:31933,y:33077,ptovrint:False,ptlb:A Normal,ptin:_ANormal,varname:_A_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbab0a6f7bae9cf42bf057d8ee2755f6,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:120,x:31933,y:33265,ptovrint:False,ptlb:B Normal,ptin:_BNormal,varname:_B_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cf20bfced7e912046a9ce991a4d775ec,ntxv:3,isnm:True|UVIN-9054-OUT;n:type:ShaderForge.SFN_Lerp,id:3447,x:32156,y:33016,varname:node_3447,prsc:2|A-703-RGB,B-120-RGB,T-1862-R;n:type:ShaderForge.SFN_Normalize,id:1349,x:32334,y:32999,varname:node_1349,prsc:2|IN-3447-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:8051,x:32196,y:32814,varname:node_8051,prsc:2,a:0.4,b:0.44|IN-1862-R;proporder:531-4463-9594-703-120;pass:END;sub:END;*/

Shader "Shader Forge/NewShader5" {
    Properties {
        _B ("B", 2D) = "white" {}
        _A ("A", 2D) = "white" {}
        _node_947 ("node_947", 2D) = "white" {}
        _ANormal ("A Normal", 2D) = "bump" {}
        _BNormal ("B Normal", 2D) = "bump" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _A; uniform float4 _A_ST;
            uniform sampler2D _B; uniform float4 _B_ST;
            uniform sampler2D _ANormal; uniform float4 _ANormal_ST;
            uniform sampler2D _BNormal; uniform float4 _BNormal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _ANormal_var = UnpackNormal(tex2D(_ANormal,TRANSFORM_TEX(i.uv0, _ANormal)));
                float2 node_9054 = (i.uv0*8.0);
                float3 _BNormal_var = UnpackNormal(tex2D(_BNormal,TRANSFORM_TEX(node_9054, _BNormal)));
                float3 normalLocal = normalize(lerp(_ANormal_var.rgb,_BNormal_var.rgb,i.vertexColor.r));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float node_8051 = lerp(0.4,0.44,i.vertexColor.r);
                float3 specularColor = float3(node_8051,node_8051,node_8051);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _A_var = tex2D(_A,TRANSFORM_TEX(i.uv0, _A));
                float4 _B_var = tex2D(_B,TRANSFORM_TEX(node_9054, _B));
                float3 diffuseColor = lerp(_A_var.rgb,_B_var.rgb,i.vertexColor.r);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _A; uniform float4 _A_ST;
            uniform sampler2D _B; uniform float4 _B_ST;
            uniform sampler2D _ANormal; uniform float4 _ANormal_ST;
            uniform sampler2D _BNormal; uniform float4 _BNormal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _ANormal_var = UnpackNormal(tex2D(_ANormal,TRANSFORM_TEX(i.uv0, _ANormal)));
                float2 node_9054 = (i.uv0*8.0);
                float3 _BNormal_var = UnpackNormal(tex2D(_BNormal,TRANSFORM_TEX(node_9054, _BNormal)));
                float3 normalLocal = normalize(lerp(_ANormal_var.rgb,_BNormal_var.rgb,i.vertexColor.r));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float node_8051 = lerp(0.4,0.44,i.vertexColor.r);
                float3 specularColor = float3(node_8051,node_8051,node_8051);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _A_var = tex2D(_A,TRANSFORM_TEX(i.uv0, _A));
                float4 _B_var = tex2D(_B,TRANSFORM_TEX(node_9054, _B));
                float3 diffuseColor = lerp(_A_var.rgb,_B_var.rgb,i.vertexColor.r);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}

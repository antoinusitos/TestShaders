// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32789,y:32528,varname:node_4013,prsc:2|emission-2373-OUT,voffset-7780-OUT;n:type:ShaderForge.SFN_TexCoord,id:4927,x:30423,y:32746,varname:node_4927,prsc:2,uv:0;n:type:ShaderForge.SFN_ComponentMask,id:42,x:31010,y:32771,varname:node_42,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-5250-X;n:type:ShaderForge.SFN_Lerp,id:2373,x:32506,y:32617,varname:node_2373,prsc:2|A-1001-RGB,B-1995-RGB,T-3565-OUT;n:type:ShaderForge.SFN_Color,id:1001,x:32153,y:32430,ptovrint:False,ptlb:node_1001,ptin:_node_1001,varname:node_1001,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.9310344,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:1995,x:32153,y:32584,ptovrint:False,ptlb:node_1001_copy,ptin:_node_1001_copy,varname:_node_1001_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Clamp01,id:3565,x:32313,y:32745,varname:node_3565,prsc:2|IN-1819-OUT;n:type:ShaderForge.SFN_Sin,id:2527,x:31923,y:32767,varname:node_2527,prsc:2|IN-9991-OUT;n:type:ShaderForge.SFN_Multiply,id:9991,x:31723,y:32767,varname:node_9991,prsc:2|A-4413-OUT,B-8106-OUT,C-3909-OUT;n:type:ShaderForge.SFN_Vector1,id:4413,x:31534,y:32629,varname:node_4413,prsc:2,v1:2;n:type:ShaderForge.SFN_RemapRange,id:1819,x:32118,y:32767,varname:node_1819,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-2527-OUT;n:type:ShaderForge.SFN_Tau,id:3909,x:31582,y:32900,varname:node_3909,prsc:2;n:type:ShaderForge.SFN_Add,id:8106,x:31343,y:32790,varname:node_8106,prsc:2|A-42-OUT,B-9769-TSL;n:type:ShaderForge.SFN_Time,id:9769,x:31050,y:32931,varname:node_9769,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:3948,x:32313,y:32896,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:7780,x:32524,y:32791,varname:node_7780,prsc:2|A-3565-OUT,B-3948-OUT,C-2307-OUT;n:type:ShaderForge.SFN_Vector1,id:2307,x:32338,y:33103,varname:node_2307,prsc:2,v1:0.3;n:type:ShaderForge.SFN_FragmentPosition,id:5250,x:30811,y:32749,varname:node_5250,prsc:2;proporder:1001-1995;pass:END;sub:END;*/

Shader "Shader Forge/NewShader3" {
    Properties {
        _node_1001 ("node_1001", Color) = (1,0.9310344,0,1)
        _node_1001_copy ("node_1001_copy", Color) = (1,0,0,1)
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _node_1001;
            uniform float4 _node_1001_copy;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float node_42 = mul(unity_ObjectToWorld, v.vertex).r.r;
                float4 node_9769 = _Time + _TimeEditor;
                float node_3565 = saturate((sin((2.0*(node_42+node_9769.r)*6.28318530718))*0.5+0.5));
                v.vertex.xyz += (node_3565*v.normal*0.3);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float node_42 = i.posWorld.r.r;
                float4 node_9769 = _Time + _TimeEditor;
                float node_3565 = saturate((sin((2.0*(node_42+node_9769.r)*6.28318530718))*0.5+0.5));
                float3 emissive = lerp(_node_1001.rgb,_node_1001_copy.rgb,node_3565);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float node_42 = mul(unity_ObjectToWorld, v.vertex).r.r;
                float4 node_9769 = _Time + _TimeEditor;
                float node_3565 = saturate((sin((2.0*(node_42+node_9769.r)*6.28318530718))*0.5+0.5));
                v.vertex.xyz += (node_3565*v.normal*0.3);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}

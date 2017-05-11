// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33236,y:33012,varname:node_4013,prsc:2|diff-2452-RGB,voffset-5271-OUT;n:type:ShaderForge.SFN_Tex2d,id:2452,x:32338,y:33001,ptovrint:False,ptlb:node_2452,ptin:_node_2452,varname:node_2452,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:760013cbbec26154cae0e18b5205674c,ntxv:0,isnm:False|UVIN-4238-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:7538,x:31656,y:33421,varname:node_7538,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:4934,x:31854,y:33370,varname:node_4934,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-2426-U;n:type:ShaderForge.SFN_Time,id:4791,x:31823,y:33525,varname:node_4791,prsc:2;n:type:ShaderForge.SFN_Add,id:8531,x:32013,y:33426,varname:node_8531,prsc:2|A-4934-OUT,B-4791-TSL;n:type:ShaderForge.SFN_Multiply,id:2021,x:32201,y:33392,varname:node_2021,prsc:2|A-8381-OUT,B-8531-OUT,C-7070-OUT;n:type:ShaderForge.SFN_Sin,id:496,x:32413,y:33360,varname:node_496,prsc:2|IN-2021-OUT;n:type:ShaderForge.SFN_Vector1,id:8381,x:31964,y:33232,varname:node_8381,prsc:2,v1:4;n:type:ShaderForge.SFN_Tau,id:7070,x:31993,y:33625,varname:node_7070,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:2426,x:31639,y:33287,varname:node_2426,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRange,id:3393,x:32581,y:33376,varname:node_3393,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-496-OUT;n:type:ShaderForge.SFN_NormalVector,id:5324,x:32497,y:33572,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:8070,x:32785,y:33490,varname:node_8070,prsc:2|A-3393-OUT,B-5324-OUT,C-8563-OUT;n:type:ShaderForge.SFN_Vector1,id:8563,x:32538,y:33725,varname:node_8563,prsc:2,v1:4;n:type:ShaderForge.SFN_Add,id:5271,x:33021,y:33550,varname:node_5271,prsc:2|A-8070-OUT,B-1411-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3697,x:31610,y:33914,varname:node_3697,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-2689-V;n:type:ShaderForge.SFN_Time,id:7723,x:31780,y:34057,varname:node_7723,prsc:2;n:type:ShaderForge.SFN_Add,id:4359,x:31970,y:33958,varname:node_4359,prsc:2|A-3697-OUT,B-7723-TSL;n:type:ShaderForge.SFN_Multiply,id:9387,x:32158,y:33924,varname:node_9387,prsc:2|A-6420-OUT,B-4359-OUT,C-6261-OUT;n:type:ShaderForge.SFN_Sin,id:8119,x:32370,y:33892,varname:node_8119,prsc:2|IN-9387-OUT;n:type:ShaderForge.SFN_Vector1,id:6420,x:31921,y:33764,varname:node_6420,prsc:2,v1:4;n:type:ShaderForge.SFN_Tau,id:6261,x:31950,y:34157,varname:node_6261,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:2689,x:31423,y:33882,varname:node_2689,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRange,id:511,x:32538,y:33908,varname:node_511,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-8119-OUT;n:type:ShaderForge.SFN_NormalVector,id:1588,x:32454,y:34104,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:1411,x:32742,y:34022,varname:node_1411,prsc:2|A-511-OUT,B-1588-OUT,C-3996-OUT;n:type:ShaderForge.SFN_Vector1,id:3996,x:32495,y:34257,varname:node_3996,prsc:2,v1:4;n:type:ShaderForge.SFN_TexCoord,id:4074,x:31813,y:32931,varname:node_4074,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:4238,x:32094,y:33001,varname:node_4238,prsc:2|A-4074-UVOUT,B-7738-OUT;n:type:ShaderForge.SFN_Vector1,id:7738,x:31850,y:33080,varname:node_7738,prsc:2,v1:20;proporder:2452;pass:END;sub:END;*/

Shader "Shader Forge/NewShader6" {
    Properties {
        _node_2452 ("node_2452", 2D) = "white" {}
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
            uniform float4 _TimeEditor;
            uniform sampler2D _node_2452; uniform float4 _node_2452_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_4791 = _Time + _TimeEditor;
                float node_3697 = o.uv0.g.r;
                float4 node_7723 = _Time + _TimeEditor;
                v.vertex.xyz += (((sin((4.0*(o.uv0.r.r+node_4791.r)*6.28318530718))*0.5+0.5)*v.normal*4.0)+((sin((4.0*(node_3697+node_7723.r)*6.28318530718))*0.5+0.5)*v.normal*4.0));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float2 node_4238 = (i.uv0*20.0);
                float4 _node_2452_var = tex2D(_node_2452,TRANSFORM_TEX(node_4238, _node_2452));
                float3 diffuseColor = _node_2452_var.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
            uniform float4 _TimeEditor;
            uniform sampler2D _node_2452; uniform float4 _node_2452_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_4791 = _Time + _TimeEditor;
                float node_3697 = o.uv0.g.r;
                float4 node_7723 = _Time + _TimeEditor;
                v.vertex.xyz += (((sin((4.0*(o.uv0.r.r+node_4791.r)*6.28318530718))*0.5+0.5)*v.normal*4.0)+((sin((4.0*(node_3697+node_7723.r)*6.28318530718))*0.5+0.5)*v.normal*4.0));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float2 node_4238 = (i.uv0*20.0);
                float4 _node_2452_var = tex2D(_node_2452,TRANSFORM_TEX(node_4238, _node_2452));
                float3 diffuseColor = _node_2452_var.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
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
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_4791 = _Time + _TimeEditor;
                float node_3697 = o.uv0.g.r;
                float4 node_7723 = _Time + _TimeEditor;
                v.vertex.xyz += (((sin((4.0*(o.uv0.r.r+node_4791.r)*6.28318530718))*0.5+0.5)*v.normal*4.0)+((sin((4.0*(node_3697+node_7723.r)*6.28318530718))*0.5+0.5)*v.normal*4.0));
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

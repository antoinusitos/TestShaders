// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:34409,y:32383,varname:node_4013,prsc:2|emission-7489-OUT,clip-7645-OUT;n:type:ShaderForge.SFN_Sin,id:4206,x:32745,y:32807,varname:node_4206,prsc:2|IN-8462-OUT;n:type:ShaderForge.SFN_Multiply,id:4901,x:32984,y:32831,varname:node_4901,prsc:2|A-4206-OUT,B-2290-OUT;n:type:ShaderForge.SFN_Vector1,id:2290,x:32771,y:32984,varname:node_2290,prsc:2,v1:20;n:type:ShaderForge.SFN_Lerp,id:7489,x:32659,y:32519,varname:node_7489,prsc:2|A-7995-RGB,B-999-RGB,T-7645-OUT;n:type:ShaderForge.SFN_Color,id:999,x:32394,y:32598,ptovrint:False,ptlb:node_999,ptin:_node_999,varname:node_999,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_TexCoord,id:4400,x:31925,y:32807,varname:node_4400,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRange,id:2176,x:32101,y:32807,varname:node_2176,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4400-UVOUT;n:type:ShaderForge.SFN_Length,id:5678,x:32271,y:32807,varname:node_5678,prsc:2|IN-2176-OUT;n:type:ShaderForge.SFN_Multiply,id:8462,x:32498,y:32807,varname:node_8462,prsc:2|A-5678-OUT,B-1455-OUT,C-6886-OUT,D-9735-OUT;n:type:ShaderForge.SFN_Pi,id:1455,x:32304,y:32950,varname:node_1455,prsc:2;n:type:ShaderForge.SFN_Vector1,id:6886,x:32278,y:33105,varname:node_6886,prsc:2,v1:2;n:type:ShaderForge.SFN_Vector1,id:9735,x:32269,y:33190,varname:node_9735,prsc:2,v1:3;n:type:ShaderForge.SFN_VertexColor,id:7995,x:32384,y:32439,varname:node_7995,prsc:2;n:type:ShaderForge.SFN_Time,id:5198,x:33208,y:32720,varname:node_5198,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:3092,x:33500,y:33035,varname:node_3092,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-7872-OUT;n:type:ShaderForge.SFN_Multiply,id:7872,x:33319,y:33035,varname:node_7872,prsc:2|A-4901-OUT,B-8598-OUT;n:type:ShaderForge.SFN_Add,id:674,x:33449,y:32837,varname:node_674,prsc:2|A-5198-T,B-7872-OUT;n:type:ShaderForge.SFN_Multiply,id:9667,x:33751,y:32807,varname:node_9667,prsc:2|A-9415-OUT,B-674-OUT,C-5652-OUT;n:type:ShaderForge.SFN_Vector1,id:9415,x:33492,y:32742,varname:node_9415,prsc:2,v1:1;n:type:ShaderForge.SFN_Tau,id:5652,x:33600,y:32888,varname:node_5652,prsc:2;n:type:ShaderForge.SFN_Sin,id:7645,x:33912,y:32807,varname:node_7645,prsc:2|IN-9667-OUT;n:type:ShaderForge.SFN_Vector1,id:8598,x:33041,y:33143,varname:node_8598,prsc:2,v1:-0.1;proporder:999;pass:END;sub:END;*/

Shader "Shader Forge/NewShader8" {
    Properties {
        _node_999 ("node_999", Color) = (0,0,0,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
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
            uniform float4 _node_999;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 node_5198 = _Time + _TimeEditor;
                float2 node_2176 = (i.uv0*2.0+-1.0);
                float node_7872 = ((sin((length(node_2176)*3.141592654*2.0*3.0))*20.0)*(-0.1));
                float node_7645 = sin((1.0*(node_5198.g+node_7872)*6.28318530718));
                clip(node_7645 - 0.5);
////// Lighting:
////// Emissive:
                float3 node_7489 = lerp(i.vertexColor.rgb,_node_999.rgb,node_7645);
                float3 emissive = node_7489;
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
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 node_5198 = _Time + _TimeEditor;
                float2 node_2176 = (i.uv0*2.0+-1.0);
                float node_7872 = ((sin((length(node_2176)*3.141592654*2.0*3.0))*20.0)*(-0.1));
                float node_7645 = sin((1.0*(node_5198.g+node_7872)*6.28318530718));
                clip(node_7645 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}

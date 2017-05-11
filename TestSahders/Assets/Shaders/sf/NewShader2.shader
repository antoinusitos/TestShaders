// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32741,y:32673,varname:node_4013,prsc:2|emission-6923-OUT;n:type:ShaderForge.SFN_Color,id:5838,x:32045,y:32369,ptovrint:False,ptlb:node_5838,ptin:_node_5838,varname:node_5838,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:1740,x:32045,y:32552,ptovrint:False,ptlb:node_5838_copy,ptin:_node_5838_copy,varname:_node_5838_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:6923,x:32372,y:32500,varname:node_6923,prsc:2|A-5838-RGB,B-1740-RGB,T-3499-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6167,x:31977,y:32830,varname:node_6167,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-2983-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:2983,x:31382,y:32872,varname:node_2983,prsc:2,uv:0;n:type:ShaderForge.SFN_Length,id:7881,x:31977,y:33010,varname:node_7881,prsc:2|IN-1234-OUT;n:type:ShaderForge.SFN_RemapRange,id:1234,x:31606,y:32970,varname:node_1234,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-2983-UVOUT;n:type:ShaderForge.SFN_ArcTan2,id:3499,x:31977,y:33145,varname:node_3499,prsc:2,attp:2|A-5984-G,B-5984-R;n:type:ShaderForge.SFN_ComponentMask,id:5984,x:31776,y:33121,varname:node_5984,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1234-OUT;proporder:5838-1740;pass:END;sub:END;*/

Shader "Shader Forge/NewShader2" {
    Properties {
        _node_5838 ("node_5838", Color) = (1,0,0,1)
        _node_5838_copy ("node_5838_copy", Color) = (0,0,1,1)
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
            uniform float4 _node_5838;
            uniform float4 _node_5838_copy;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float2 node_1234 = (i.uv0*2.0+-1.0);
                float2 node_5984 = node_1234.rg;
                float3 emissive = lerp(_node_5838.rgb,_node_5838_copy.rgb,((atan2(node_5984.g,node_5984.r)/6.28318530718)+0.5));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}

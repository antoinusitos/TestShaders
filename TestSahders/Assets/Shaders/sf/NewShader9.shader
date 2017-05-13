// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:3,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32577,y:32648,varname:node_4013,prsc:2|emission-1910-OUT;n:type:ShaderForge.SFN_TexCoord,id:9386,x:30788,y:33078,varname:node_9386,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRange,id:7684,x:30966,y:33078,varname:node_7684,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-9386-UVOUT;n:type:ShaderForge.SFN_Length,id:8598,x:31174,y:33065,varname:node_8598,prsc:2|IN-7684-OUT;n:type:ShaderForge.SFN_Color,id:9401,x:31321,y:32468,ptovrint:False,ptlb:node_9401,ptin:_node_9401,varname:node_9401,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:9294,x:31321,y:32631,ptovrint:False,ptlb:m,ptin:_m,varname:node_9294,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Slider,id:8825,x:31164,y:32810,ptovrint:False,ptlb:1.1,ptin:_11,varname:node_8825,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.3,cur:0.3,max:1;n:type:ShaderForge.SFN_Lerp,id:1712,x:31568,y:32575,varname:node_1712,prsc:2|A-9401-RGB,B-9294-RGB,T-8825-OUT;n:type:ShaderForge.SFN_Multiply,id:1910,x:32330,y:32748,varname:node_1910,prsc:2|A-1712-OUT,B-1477-OUT;n:type:ShaderForge.SFN_Floor,id:7164,x:31400,y:33084,varname:node_7164,prsc:2|IN-8598-OUT;n:type:ShaderForge.SFN_OneMinus,id:1983,x:31574,y:33084,varname:node_1983,prsc:2|IN-7164-OUT;n:type:ShaderForge.SFN_Add,id:7021,x:31450,y:32907,varname:node_7021,prsc:2|A-596-OUT,B-8598-OUT;n:type:ShaderForge.SFN_Floor,id:7059,x:31611,y:32907,varname:node_7059,prsc:2|IN-7021-OUT;n:type:ShaderForge.SFN_OneMinus,id:1477,x:31782,y:32907,varname:node_1477,prsc:2|IN-7059-OUT;n:type:ShaderForge.SFN_Multiply,id:1737,x:31985,y:33091,varname:node_1737,prsc:2|A-1477-OUT,B-1983-OUT;n:type:ShaderForge.SFN_Time,id:634,x:30451,y:32858,varname:node_634,prsc:2;n:type:ShaderForge.SFN_Sin,id:2694,x:30627,y:32863,varname:node_2694,prsc:2|IN-634-T;n:type:ShaderForge.SFN_Multiply,id:1451,x:30788,y:32876,varname:node_1451,prsc:2|A-2694-OUT,B-1285-OUT;n:type:ShaderForge.SFN_Vector1,id:1285,x:30613,y:32998,varname:node_1285,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:596,x:31091,y:32911,varname:node_596,prsc:2|A-1451-OUT,B-1584-OUT;n:type:ShaderForge.SFN_Vector1,id:1584,x:30875,y:33008,varname:node_1584,prsc:2,v1:0.5;proporder:9401-9294-8825;pass:END;sub:END;*/

Shader "Shader Forge/NewShader9" {
    Properties {
        _node_9401 ("node_9401", Color) = (1,0,0,1)
        _m ("m", Color) = (0,1,0,1)
        _11 ("1.1", Range(0.3, 1)) = 0.3
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
            
            Offset 3, 0
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
            uniform float4 _node_9401;
            uniform float4 _m;
            uniform float _11;
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
                float4 node_634 = _Time + _TimeEditor;
                float2 node_7684 = (i.uv0*2.0+-1.0);
                float node_8598 = length(node_7684);
                float node_1477 = (1.0 - floor((((sin(node_634.g)*1.0)+0.5)+node_8598)));
                float3 emissive = (lerp(_node_9401.rgb,_m.rgb,_11)*node_1477);
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

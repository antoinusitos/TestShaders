// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33364,y:32510,varname:node_4013,prsc:2|emission-9197-OUT,clip-7806-OUT;n:type:ShaderForge.SFN_TexCoord,id:6346,x:30356,y:32782,varname:node_6346,prsc:2,uv:0;n:type:ShaderForge.SFN_Lerp,id:9197,x:32119,y:32485,varname:node_9197,prsc:2|A-9595-RGB,B-7502-RGB,T-8127-OUT;n:type:ShaderForge.SFN_Color,id:9595,x:31714,y:32432,ptovrint:False,ptlb:node_1001,ptin:_node_1001,varname:node_1001,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:7502,x:31714,y:32586,ptovrint:False,ptlb:node_1001_copy,ptin:_node_1001_copy,varname:_node_1001_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_TexCoord,id:3926,x:30754,y:32965,varname:node_3926,prsc:2,uv:0;n:type:ShaderForge.SFN_Slider,id:8127,x:31373,y:32703,ptovrint:False,ptlb:Health,ptin:_Health,varname:node_8127,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4051081,max:1;n:type:ShaderForge.SFN_RemapRange,id:8558,x:30938,y:32965,varname:node_8558,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3926-UVOUT;n:type:ShaderForge.SFN_Length,id:8192,x:31936,y:32965,varname:node_8192,prsc:2|IN-8558-OUT;n:type:ShaderForge.SFN_Multiply,id:1969,x:32892,y:32601,varname:node_1969,prsc:2|A-9197-OUT,B-7806-OUT;n:type:ShaderForge.SFN_Floor,id:4308,x:32160,y:33118,varname:node_4308,prsc:2|IN-8192-OUT;n:type:ShaderForge.SFN_OneMinus,id:7271,x:32335,y:33118,varname:node_7271,prsc:2|IN-4308-OUT;n:type:ShaderForge.SFN_Add,id:7876,x:32130,y:32893,varname:node_7876,prsc:2|A-1826-OUT,B-8192-OUT;n:type:ShaderForge.SFN_Vector1,id:1826,x:31818,y:32907,varname:node_1826,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Floor,id:5825,x:32276,y:32893,varname:node_5825,prsc:2|IN-7876-OUT;n:type:ShaderForge.SFN_Multiply,id:7806,x:32682,y:32956,varname:node_7806,prsc:2|A-678-OUT,B-5825-OUT,C-7271-OUT;n:type:ShaderForge.SFN_ArcTan2,id:398,x:31307,y:32833,varname:node_398,prsc:2,attp:2|A-5860-G,B-5860-R;n:type:ShaderForge.SFN_ComponentMask,id:5860,x:31111,y:32887,varname:node_5860,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8558-OUT;n:type:ShaderForge.SFN_Ceil,id:8807,x:31979,y:32738,varname:node_8807,prsc:2|IN-4892-OUT;n:type:ShaderForge.SFN_Subtract,id:4892,x:31714,y:32751,varname:node_4892,prsc:2|A-3132-OUT,B-8127-OUT;n:type:ShaderForge.SFN_OneMinus,id:678,x:32298,y:32744,varname:node_678,prsc:2|IN-8807-OUT;n:type:ShaderForge.SFN_OneMinus,id:3132,x:31498,y:32823,varname:node_3132,prsc:2|IN-398-OUT;proporder:9595-7502-8127;pass:END;sub:END;*/

Shader "Shader Forge/NewShader3Bis" {
    Properties {
        _node_1001 ("node_1001", Color) = (1,0,0,1)
        _node_1001_copy ("node_1001_copy", Color) = (0,1,0,1)
        _Health ("Health", Range(0, 1)) = 0.4051081
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
            uniform float4 _node_1001;
            uniform float4 _node_1001_copy;
            uniform float _Health;
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
                float2 node_8558 = (i.uv0*2.0+-1.0);
                float2 node_5860 = node_8558.rg;
                float node_398 = ((atan2(node_5860.g,node_5860.r)/6.28318530718)+0.5);
                float node_8192 = length(node_8558);
                float node_5825 = floor((0.3+node_8192));
                float node_7806 = ((1.0 - ceil(((1.0 - node_398)-_Health)))*node_5825*(1.0 - floor(node_8192)));
                clip(node_7806 - 0.5);
////// Lighting:
////// Emissive:
                float3 node_9197 = lerp(_node_1001.rgb,_node_1001_copy.rgb,_Health);
                float3 emissive = node_9197;
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
            uniform float _Health;
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
                float2 node_8558 = (i.uv0*2.0+-1.0);
                float2 node_5860 = node_8558.rg;
                float node_398 = ((atan2(node_5860.g,node_5860.r)/6.28318530718)+0.5);
                float node_8192 = length(node_8558);
                float node_5825 = floor((0.3+node_8192));
                float node_7806 = ((1.0 - ceil(((1.0 - node_398)-_Health)))*node_5825*(1.0 - floor(node_8192)));
                clip(node_7806 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}

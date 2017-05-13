// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:5,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33291,y:32744,varname:node_3138,prsc:2|emission-5658-RGB,alpha-2881-OUT;n:type:ShaderForge.SFN_Tex2d,id:8560,x:32522,y:32924,ptovrint:False,ptlb:Foam,ptin:_Foam,varname:node_8560,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3744-UVOUT;n:type:ShaderForge.SFN_VertexColor,id:2860,x:32547,y:33136,varname:node_2860,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2881,x:32882,y:32917,varname:node_2881,prsc:2|A-8560-R,B-2860-A;n:type:ShaderForge.SFN_TexCoord,id:2580,x:32072,y:32946,varname:node_2580,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:3744,x:32275,y:32968,varname:node_3744,prsc:2,spu:0,spv:-0.07|UVIN-2580-UVOUT;n:type:ShaderForge.SFN_Color,id:5658,x:32820,y:32742,ptovrint:False,ptlb:node_5658,ptin:_node_5658,varname:node_5658,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;proporder:8560-5658;pass:END;sub:END;*/

Shader "Shader Forge/waterFoam_01" {
    Properties {
        _Foam ("Foam", 2D) = "white" {}
        _node_5658 ("node_5658", Color) = (1,1,1,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent+5"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float4 _node_5658;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float3 emissive = _node_5658.rgb;
                float3 finalColor = emissive;
                float4 node_2227 = _Time + _TimeEditor;
                float2 node_3744 = (i.uv0+node_2227.g*float2(0,-0.07));
                float4 _Foam_var = tex2D(_Foam,TRANSFORM_TEX(node_3744, _Foam));
                return fixed4(finalColor,(_Foam_var.r*i.vertexColor.a));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}

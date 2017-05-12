// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33516,y:32657,varname:node_3138,prsc:2|emission-5607-OUT,alpha-1211-OUT;n:type:ShaderForge.SFN_Color,id:6160,x:32666,y:32681,ptovrint:False,ptlb:1,ptin:_1,varname:node_6160,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2865484,c2:0.3511305,c3:0.7794118,c4:1;n:type:ShaderForge.SFN_Color,id:2197,x:32704,y:32476,ptovrint:False,ptlb:2,ptin:_2,varname:node_2197,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4256055,c2:0.8647864,c3:0.9044118,c4:1;n:type:ShaderForge.SFN_DepthBlend,id:2943,x:32633,y:32947,varname:node_2943,prsc:2|DIST-7321-OUT;n:type:ShaderForge.SFN_Slider,id:7321,x:32250,y:32968,ptovrint:False,ptlb:distance,ptin:_distance,varname:node_7321,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:15,max:30;n:type:ShaderForge.SFN_Posterize,id:935,x:32993,y:32905,varname:node_935,prsc:2|IN-2943-OUT,STPS-8663-OUT;n:type:ShaderForge.SFN_Slider,id:8663,x:32387,y:33183,ptovrint:False,ptlb:__steps,ptin:___steps,varname:node_8663,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:2,max:10;n:type:ShaderForge.SFN_Lerp,id:5607,x:33092,y:32749,varname:node_5607,prsc:2|A-2197-RGB,B-6160-RGB,T-935-OUT;n:type:ShaderForge.SFN_Slider,id:1211,x:32856,y:33157,ptovrint:False,ptlb:opacity,ptin:_opacity,varname:node_1211,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;proporder:6160-2197-7321-8663-1211;pass:END;sub:END;*/

Shader "Shader Forge/S_eaucartoon" {
    Properties {
        _1 ("1", Color) = (0.2865484,0.3511305,0.7794118,1)
        _2 ("2", Color) = (0.4256055,0.8647864,0.9044118,1)
        _distance ("distance", Range(1, 30)) = 15
        ___steps ("__steps", Range(1, 10)) = 2
        _opacity ("opacity", Range(0, 1)) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _1;
            uniform float4 _2;
            uniform float _distance;
            uniform float ___steps;
            uniform float _opacity;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 projPos : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
////// Emissive:
                float3 emissive = lerp(_2.rgb,_1.rgb,floor(saturate((sceneZ-partZ)/_distance) * ___steps) / (___steps - 1));
                float3 finalColor = emissive;
                return fixed4(finalColor,_opacity);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}

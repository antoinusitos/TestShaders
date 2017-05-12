// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:34558,y:33001,varname:node_4013,prsc:2|diff-2257-OUT,emission-7076-OUT,alpha-7916-OUT,voffset-5271-OUT;n:type:ShaderForge.SFN_Tex2d,id:2452,x:33737,y:32790,ptovrint:False,ptlb:node_2452,ptin:_node_2452,varname:node_2452,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:760013cbbec26154cae0e18b5205674c,ntxv:0,isnm:False|UVIN-4238-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:7538,x:31656,y:33421,varname:node_7538,prsc:2;n:type:ShaderForge.SFN_ComponentMask,id:4934,x:31854,y:33370,varname:node_4934,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-2426-U;n:type:ShaderForge.SFN_Time,id:4791,x:31823,y:33525,varname:node_4791,prsc:2;n:type:ShaderForge.SFN_Add,id:8531,x:32013,y:33426,varname:node_8531,prsc:2|A-4934-OUT,B-4791-TSL;n:type:ShaderForge.SFN_Multiply,id:2021,x:32201,y:33392,varname:node_2021,prsc:2|A-8381-OUT,B-8531-OUT,C-7070-OUT;n:type:ShaderForge.SFN_Sin,id:496,x:32413,y:33360,varname:node_496,prsc:2|IN-2021-OUT;n:type:ShaderForge.SFN_Vector1,id:8381,x:31964,y:33232,varname:node_8381,prsc:2,v1:4;n:type:ShaderForge.SFN_Tau,id:7070,x:31993,y:33625,varname:node_7070,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:2426,x:31639,y:33287,varname:node_2426,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRange,id:3393,x:32581,y:33376,varname:node_3393,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-496-OUT;n:type:ShaderForge.SFN_NormalVector,id:5324,x:32497,y:33572,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:8070,x:32785,y:33490,varname:node_8070,prsc:2|A-3393-OUT,B-5324-OUT,C-9009-OUT;n:type:ShaderForge.SFN_Add,id:5271,x:33021,y:33550,varname:node_5271,prsc:2|A-8070-OUT,B-1411-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3697,x:31610,y:33914,varname:node_3697,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-2689-V;n:type:ShaderForge.SFN_Time,id:7723,x:31780,y:34057,varname:node_7723,prsc:2;n:type:ShaderForge.SFN_Add,id:4359,x:31970,y:33958,varname:node_4359,prsc:2|A-3697-OUT,B-7723-TSL;n:type:ShaderForge.SFN_Multiply,id:9387,x:32158,y:33924,varname:node_9387,prsc:2|A-6420-OUT,B-4359-OUT,C-6261-OUT;n:type:ShaderForge.SFN_Sin,id:8119,x:32370,y:33892,varname:node_8119,prsc:2|IN-9387-OUT;n:type:ShaderForge.SFN_Vector1,id:6420,x:31921,y:33764,varname:node_6420,prsc:2,v1:4;n:type:ShaderForge.SFN_Tau,id:6261,x:31950,y:34157,varname:node_6261,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:2689,x:31423,y:33882,varname:node_2689,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRange,id:511,x:32538,y:33908,varname:node_511,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-8119-OUT;n:type:ShaderForge.SFN_NormalVector,id:1588,x:32454,y:34104,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:1411,x:32742,y:34022,varname:node_1411,prsc:2|A-511-OUT,B-1588-OUT,C-9009-OUT;n:type:ShaderForge.SFN_TexCoord,id:4074,x:33212,y:32720,varname:node_4074,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:4238,x:33493,y:32790,varname:node_4238,prsc:2|A-4074-UVOUT,B-7738-OUT;n:type:ShaderForge.SFN_Vector1,id:7738,x:33249,y:32869,varname:node_7738,prsc:2,v1:20;n:type:ShaderForge.SFN_Lerp,id:2257,x:34243,y:32891,varname:node_2257,prsc:2|A-2452-RGB,B-2822-RGB,T-5811-OUT;n:type:ShaderForge.SFN_Color,id:2822,x:33644,y:33036,ptovrint:False,ptlb:TopVertexColor,ptin:_TopVertexColor,varname:node_2822,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_ComponentMask,id:1599,x:32581,y:33200,varname:node_1599,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-496-OUT;n:type:ShaderForge.SFN_OneMinus,id:9551,x:33102,y:33274,varname:node_9551,prsc:2|IN-1599-OUT;n:type:ShaderForge.SFN_Multiply,id:7270,x:33262,y:33274,varname:node_7270,prsc:2|A-9551-OUT,B-9888-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6517,x:32676,y:33764,varname:node_6517,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-8119-OUT;n:type:ShaderForge.SFN_OneMinus,id:9888,x:32842,y:33764,varname:node_9888,prsc:2|IN-6517-OUT;n:type:ShaderForge.SFN_OneMinus,id:3828,x:33424,y:33274,varname:node_3828,prsc:2|IN-7270-OUT;n:type:ShaderForge.SFN_Multiply,id:604,x:33770,y:33241,varname:node_604,prsc:2|A-3695-OUT,B-8819-OUT;n:type:ShaderForge.SFN_Vector1,id:8819,x:33603,y:33446,varname:node_8819,prsc:2,v1:0.5;n:type:ShaderForge.SFN_RemapRange,id:3695,x:33593,y:33274,varname:node_3695,prsc:2,frmn:0.9,frmx:1,tomn:-0.5,tomx:0.5|IN-3828-OUT;n:type:ShaderForge.SFN_Color,id:9053,x:33640,y:33810,ptovrint:False,ptlb:1,ptin:_1,varname:node_6160,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:4576,x:33678,y:33605,ptovrint:False,ptlb:2,ptin:_2,varname:node_2197,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_DepthBlend,id:1833,x:33607,y:34076,varname:node_1833,prsc:2|DIST-3001-OUT;n:type:ShaderForge.SFN_Slider,id:3001,x:33224,y:34063,ptovrint:False,ptlb:distance,ptin:_distance,varname:node_7321,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:15,max:30;n:type:ShaderForge.SFN_Posterize,id:5995,x:33830,y:34112,varname:node_5995,prsc:2|IN-1833-OUT,STPS-8747-OUT;n:type:ShaderForge.SFN_Slider,id:8747,x:33361,y:34312,ptovrint:False,ptlb:__steps,ptin:___steps,varname:node_8663,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:2,max:10;n:type:ShaderForge.SFN_Lerp,id:7076,x:34066,y:33878,varname:node_7076,prsc:2|A-4576-RGB,B-9053-RGB,T-5995-OUT;n:type:ShaderForge.SFN_Slider,id:7916,x:33830,y:34286,ptovrint:False,ptlb:opacity,ptin:_opacity,varname:node_1211,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Noise,id:7049,x:33244,y:33470,varname:node_7049,prsc:2;n:type:ShaderForge.SFN_Slider,id:9009,x:32267,y:33763,ptovrint:False,ptlb:height,ptin:_height,varname:node_9009,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4,max:10;n:type:ShaderForge.SFN_Multiply,id:16,x:33958,y:33229,varname:node_16,prsc:2|A-604-OUT,B-5603-RGB;n:type:ShaderForge.SFN_Color,id:5603,x:33845,y:33385,ptovrint:False,ptlb:node_5603,ptin:_node_5603,varname:node_5603,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:5811,x:34186,y:33147,varname:node_5811,prsc:2|A-2822-RGB,B-16-OUT;proporder:2452-2822-9053-4576-3001-8747-7916-9009-5603;pass:END;sub:END;*/

Shader "Shader Forge/NewShader6" {
    Properties {
        _node_2452 ("node_2452", 2D) = "white" {}
        _TopVertexColor ("TopVertexColor", Color) = (1,1,1,1)
        _1 ("1", Color) = (1,1,1,1)
        _2 ("2", Color) = (1,1,1,1)
        _distance ("distance", Range(1, 30)) = 15
        ___steps ("__steps", Range(1, 10)) = 2
        _opacity ("opacity", Range(0, 1)) = 1
        _height ("height", Range(0, 10)) = 4
        _node_5603 ("node_5603", Color) = (1,1,1,1)
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _node_2452; uniform float4 _node_2452_ST;
            uniform float4 _TopVertexColor;
            uniform float4 _1;
            uniform float4 _2;
            uniform float _distance;
            uniform float ___steps;
            uniform float _opacity;
            uniform float _height;
            uniform float4 _node_5603;
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
                float4 projPos : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_4791 = _Time + _TimeEditor;
                float node_496 = sin((4.0*(o.uv0.r.r+node_4791.r)*6.28318530718));
                float4 node_7723 = _Time + _TimeEditor;
                float node_8119 = sin((4.0*(o.uv0.g.r+node_7723.r)*6.28318530718));
                v.vertex.xyz += (((node_496*0.5+0.5)*v.normal*_height)+((node_8119*0.5+0.5)*v.normal*_height));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float2 node_4238 = (i.uv0*20.0);
                float4 _node_2452_var = tex2D(_node_2452,TRANSFORM_TEX(node_4238, _node_2452));
                float4 node_4791 = _Time + _TimeEditor;
                float node_496 = sin((4.0*(i.uv0.r.r+node_4791.r)*6.28318530718));
                float4 node_7723 = _Time + _TimeEditor;
                float node_8119 = sin((4.0*(i.uv0.g.r+node_7723.r)*6.28318530718));
                float3 diffuseColor = lerp(_node_2452_var.rgb,_TopVertexColor.rgb,(_TopVertexColor.rgb*((((1.0 - ((1.0 - node_496.r)*(1.0 - node_8119.r)))*9.999998+-9.499998)*0.5)*_node_5603.rgb)));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = lerp(_2.rgb,_1.rgb,floor(saturate((sceneZ-partZ)/_distance) * ___steps) / (___steps - 1));
/// Final Color:
                float3 finalColor = diffuse + emissive;
                fixed4 finalRGBA = fixed4(finalColor,_opacity);
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _node_2452; uniform float4 _node_2452_ST;
            uniform float4 _TopVertexColor;
            uniform float4 _1;
            uniform float4 _2;
            uniform float _distance;
            uniform float ___steps;
            uniform float _opacity;
            uniform float _height;
            uniform float4 _node_5603;
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
                float4 projPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_4791 = _Time + _TimeEditor;
                float node_496 = sin((4.0*(o.uv0.r.r+node_4791.r)*6.28318530718));
                float4 node_7723 = _Time + _TimeEditor;
                float node_8119 = sin((4.0*(o.uv0.g.r+node_7723.r)*6.28318530718));
                v.vertex.xyz += (((node_496*0.5+0.5)*v.normal*_height)+((node_8119*0.5+0.5)*v.normal*_height));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
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
                float4 node_4791 = _Time + _TimeEditor;
                float node_496 = sin((4.0*(i.uv0.r.r+node_4791.r)*6.28318530718));
                float4 node_7723 = _Time + _TimeEditor;
                float node_8119 = sin((4.0*(i.uv0.g.r+node_7723.r)*6.28318530718));
                float3 diffuseColor = lerp(_node_2452_var.rgb,_TopVertexColor.rgb,(_TopVertexColor.rgb*((((1.0 - ((1.0 - node_496.r)*(1.0 - node_8119.r)))*9.999998+-9.499998)*0.5)*_node_5603.rgb)));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * _opacity,0);
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
            uniform float _height;
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
                float node_496 = sin((4.0*(o.uv0.r.r+node_4791.r)*6.28318530718));
                float4 node_7723 = _Time + _TimeEditor;
                float node_8119 = sin((4.0*(o.uv0.g.r+node_7723.r)*6.28318530718));
                v.vertex.xyz += (((node_496*0.5+0.5)*v.normal*_height)+((node_8119*0.5+0.5)*v.normal*_height));
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

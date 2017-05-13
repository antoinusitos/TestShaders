// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32910,y:32556,varname:node_4013,prsc:2|diff-749-OUT,spec-3619-OUT,gloss-7526-OUT,normal-7123-OUT,transm-747-OUT,lwrap-747-OUT,alpha-7327-OUT,refract-122-OUT;n:type:ShaderForge.SFN_Vector1,id:3376,x:31469,y:32632,varname:node_3376,prsc:2,v1:100;n:type:ShaderForge.SFN_Multiply,id:9582,x:31469,y:32717,varname:node_9582,prsc:2|A-9765-UVOUT,B-3376-OUT;n:type:ShaderForge.SFN_Panner,id:7570,x:31672,y:32717,varname:node_7570,prsc:2,spu:-0.03,spv:-0.03|UVIN-9582-OUT;n:type:ShaderForge.SFN_TexCoord,id:9765,x:31213,y:32856,varname:node_9765,prsc:2,uv:0;n:type:ShaderForge.SFN_Vector1,id:5477,x:31416,y:33160,varname:node_5477,prsc:2,v1:40;n:type:ShaderForge.SFN_Multiply,id:4538,x:31452,y:33008,varname:node_4538,prsc:2|A-9765-UVOUT,B-5477-OUT;n:type:ShaderForge.SFN_Panner,id:2600,x:31641,y:33008,varname:node_2600,prsc:2,spu:-0.01,spv:-0.01|UVIN-4538-OUT;n:type:ShaderForge.SFN_Tex2d,id:8816,x:31848,y:32717,ptovrint:False,ptlb:Normal Detail,ptin:_NormalDetail,varname:node_8816,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-7570-UVOUT;n:type:ShaderForge.SFN_NormalBlend,id:2488,x:32107,y:32748,varname:node_2488,prsc:2|BSE-861-OUT,DTL-8816-RGB;n:type:ShaderForge.SFN_Tex2d,id:5826,x:31836,y:33008,ptovrint:False,ptlb:Refraction,ptin:_Refraction,varname:node_5826,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2dd3788f8589b40bf82a92d76ffc5091,ntxv:3,isnm:True|UVIN-2600-UVOUT;n:type:ShaderForge.SFN_Lerp,id:861,x:32052,y:32909,varname:node_861,prsc:2|A-6701-OUT,B-5826-RGB,T-5805-OUT;n:type:ShaderForge.SFN_Vector3,id:6701,x:31803,y:32898,varname:node_6701,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Slider,id:5805,x:31641,y:33197,ptovrint:False,ptlb:Reflection,ptin:_Reflection,varname:node_5805,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Normalize,id:7123,x:32293,y:32748,varname:node_7123,prsc:2|IN-2488-OUT;n:type:ShaderForge.SFN_Fresnel,id:87,x:32293,y:32559,varname:node_87,prsc:2|NRM-861-OUT,EXP-7312-OUT;n:type:ShaderForge.SFN_Slider,id:7312,x:31931,y:32525,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:node_7312,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:749,x:32485,y:32430,varname:node_749,prsc:2|A-6291-OUT,B-87-OUT;n:type:ShaderForge.SFN_Multiply,id:6291,x:32293,y:32347,varname:node_6291,prsc:2|A-4009-RGB,B-4605-A;n:type:ShaderForge.SFN_Color,id:4009,x:31989,y:32176,ptovrint:False,ptlb:node_4009,ptin:_node_4009,varname:node_4009,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.2965517,c3:1,c4:1;n:type:ShaderForge.SFN_VertexColor,id:4605,x:31976,y:32333,varname:node_4605,prsc:2;n:type:ShaderForge.SFN_Slider,id:7526,x:32432,y:32291,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_7526,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.27,max:1;n:type:ShaderForge.SFN_Vector1,id:3619,x:32572,y:32591,varname:node_3619,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:7327,x:32639,y:32848,varname:node_7327,prsc:2|A-5010-OUT,B-3063-A;n:type:ShaderForge.SFN_ComponentMask,id:2548,x:32281,y:33079,varname:node_2548,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5826-RGB;n:type:ShaderForge.SFN_Multiply,id:849,x:32293,y:33231,varname:node_849,prsc:2|A-3796-OUT,B-9871-OUT;n:type:ShaderForge.SFN_Slider,id:3796,x:31874,y:33298,ptovrint:False,ptlb:Distortion,ptin:_Distortion,varname:node_3796,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.48,max:1;n:type:ShaderForge.SFN_Vector1,id:9871,x:32014,y:33382,varname:node_9871,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Slider,id:5010,x:32214,y:32892,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_5010,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.29,max:1;n:type:ShaderForge.SFN_VertexColor,id:3063,x:32310,y:32952,varname:node_3063,prsc:2;n:type:ShaderForge.SFN_Vector1,id:747,x:32726,y:32678,varname:node_747,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:122,x:32480,y:33117,varname:node_122,prsc:2|A-2548-OUT,B-849-OUT;proporder:8816-5826-5805-7312-4009-7526-5010-3796;pass:END;sub:END;*/

Shader "Shader Forge/NewShader7" {
    Properties {
        _NormalDetail ("Normal Detail", 2D) = "bump" {}
        _Refraction ("Refraction", 2D) = "bump" {}
        _Reflection ("Reflection", Range(0, 1)) = 0
        _Fresnel ("Fresnel", Range(0, 10)) = 0
        _node_4009 ("node_4009", Color) = (0,0.2965517,1,1)
        _Gloss ("Gloss", Range(0, 1)) = 0.27
        _Opacity ("Opacity", Range(0, 1)) = 0.29
        _Distortion ("Distortion", Range(0, 1)) = 0.48
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
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
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _NormalDetail; uniform float4 _NormalDetail_ST;
            uniform sampler2D _Refraction; uniform float4 _Refraction_ST;
            uniform float _Reflection;
            uniform float _Fresnel;
            uniform float4 _node_4009;
            uniform float _Gloss;
            uniform float _Distortion;
            uniform float _Opacity;
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
                float4 screenPos : TEXCOORD5;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(6)
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
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_9146 = _Time + _TimeEditor;
                float2 node_2600 = ((i.uv0*40.0)+node_9146.g*float2(-0.01,-0.01));
                float3 _Refraction_var = UnpackNormal(tex2D(_Refraction,TRANSFORM_TEX(node_2600, _Refraction)));
                float3 node_861 = lerp(float3(0,0,1),_Refraction_var.rgb,_Reflection);
                float2 node_7570 = ((i.uv0*100.0)+node_9146.g*float2(-0.03,-0.03));
                float3 _NormalDetail_var = UnpackNormal(tex2D(_NormalDetail,TRANSFORM_TEX(node_7570, _NormalDetail)));
                float3 node_2488_nrm_base = node_861 + float3(0,0,1);
                float3 node_2488_nrm_detail = _NormalDetail_var.rgb * float3(-1,-1,1);
                float3 node_2488_nrm_combined = node_2488_nrm_base*dot(node_2488_nrm_base, node_2488_nrm_detail)/node_2488_nrm_base.z - node_2488_nrm_detail;
                float3 node_2488 = node_2488_nrm_combined;
                float3 normalLocal = normalize(node_2488);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 node_2548 = _Refraction_var.rgb.rg;
                float node_849 = (_Distortion*0.2);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (node_2548*node_849);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float node_3619 = 0.0;
                float3 specularColor = float3(node_3619,node_3619,node_3619);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float node_747 = 1.0;
                float3 w = float3(node_747,node_747,node_747)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * float3(node_747,node_747,node_747);
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = (forwardLight+backLight) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = ((_node_4009.rgb*i.vertexColor.a)*pow(1.0-max(0,dot(node_861, viewDirection)),_Fresnel));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,(_Opacity*i.vertexColor.a)),1);
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
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _NormalDetail; uniform float4 _NormalDetail_ST;
            uniform sampler2D _Refraction; uniform float4 _Refraction_ST;
            uniform float _Reflection;
            uniform float _Fresnel;
            uniform float4 _node_4009;
            uniform float _Gloss;
            uniform float _Distortion;
            uniform float _Opacity;
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
                float4 screenPos : TEXCOORD5;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
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
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_7195 = _Time + _TimeEditor;
                float2 node_2600 = ((i.uv0*40.0)+node_7195.g*float2(-0.01,-0.01));
                float3 _Refraction_var = UnpackNormal(tex2D(_Refraction,TRANSFORM_TEX(node_2600, _Refraction)));
                float3 node_861 = lerp(float3(0,0,1),_Refraction_var.rgb,_Reflection);
                float2 node_7570 = ((i.uv0*100.0)+node_7195.g*float2(-0.03,-0.03));
                float3 _NormalDetail_var = UnpackNormal(tex2D(_NormalDetail,TRANSFORM_TEX(node_7570, _NormalDetail)));
                float3 node_2488_nrm_base = node_861 + float3(0,0,1);
                float3 node_2488_nrm_detail = _NormalDetail_var.rgb * float3(-1,-1,1);
                float3 node_2488_nrm_combined = node_2488_nrm_base*dot(node_2488_nrm_base, node_2488_nrm_detail)/node_2488_nrm_base.z - node_2488_nrm_detail;
                float3 node_2488 = node_2488_nrm_combined;
                float3 normalLocal = normalize(node_2488);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 node_2548 = _Refraction_var.rgb.rg;
                float node_849 = (_Distortion*0.2);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (node_2548*node_849);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float node_3619 = 0.0;
                float3 specularColor = float3(node_3619,node_3619,node_3619);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float node_747 = 1.0;
                float3 w = float3(node_747,node_747,node_747)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * float3(node_747,node_747,node_747);
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = (forwardLight+backLight) * attenColor;
                float3 diffuseColor = ((_node_4009.rgb*i.vertexColor.a)*pow(1.0-max(0,dot(node_861, viewDirection)),_Fresnel));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * (_Opacity*i.vertexColor.a),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}

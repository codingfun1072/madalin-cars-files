Shader "FastShadowReceiver/Projector/Multiply" {
	Properties {
		[NoScaleOffset] _ShadowTex ("Cookie", 2D) = "gray" {}
		[NoScaleOffset] _FalloffTex ("FallOff", 2D) = "white" {}
		_Alpha ("Shadow Darkness", Range(0, 1)) = 1
		_Offset ("Offset", Range(0, -10)) = -1
		_OffsetSlope ("Offset Slope Factor", Range(0, -1)) = -1
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType" = "Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = 1;
		}
		ENDCG
	}
	Fallback "FastShadowReceiver/Projector/Multiply Without Falloff"
	//CustomEditor "FastShadowReceiver.ProjectorShaderGUI"
}
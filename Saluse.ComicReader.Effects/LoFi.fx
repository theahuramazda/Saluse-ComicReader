//--------------------------------------------------------------------------------------
// 
// WPF ShaderEffect HLSL -- EmbossedEffect
//
//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------
// Sampler Inputs (Brushes, including ImplicitInput)
//--------------------------------------------------------------------------------------

sampler2D implicitInputSampler : register(S0);


//--------------------------------------------------------------------------------------
// Pixel Shader
//--------------------------------------------------------------------------------------

float4 main(float2 uv : TEXCOORD) : COLOR
{
	// Pixelate
	float HorizontalPixelCounts = 1024;
	float VerticalPixelCounts  = 1024;

	float2 brickCounts = { HorizontalPixelCounts, VerticalPixelCounts };
	float2 brickSize = 1.0 / brickCounts;

	// Offset every other row of bricks
	float2 offsetuv = uv;
	bool oddRow = floor(offsetuv.y / brickSize.y) % 2.0 >= 1.0;
	if (oddRow)
	{
		offsetuv.x += brickSize.x / 2.0;
	}
	 
	float2 brickNum = floor(offsetuv / brickSize);
	float2 centerOfBrick = brickNum * brickSize + brickSize / 2;
	float4 color = tex2D(implicitInputSampler, centerOfBrick);

	return color;
}
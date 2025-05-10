/***********************************************************/

/* Autor shader: Foxioo and Adam Hawker (aka Sketchy / MuddyMole) */
/* Version shader: 1.0 (16.11.2024) */
/* My GitHub: https://github.com/FoxiooOfficial */

/***********************************************************/

/* ####################################################### */

/***********************************************************/
/* Samplers */
/***********************************************************/

sampler2D S2D_Image : register(s0);
sampler2D S2D_Background : register(s1);

/***********************************************************/
/* Variables */
/***********************************************************/

    float _Mixing;

    float xA;
    float yA;
    float xB;
    float yB;
    float xC;
    float yC;
    float xD;
    float yD;

/************************************************************/
/* Main */
/************************************************************/

float3 Fun_Quad(float2 UV)
{
    xD += 0.0001;

    float a = (xA - UV.x) * (yB - UV.y) - (xB - UV.x) * (yA - UV.y);
    float b = (xB - UV.x) * (yC - UV.y) - (xC - UV.x) * (yB - UV.y);
    float c = (xC - UV.x) * (yD - UV.y) - (xD - UV.x) * (yC - UV.y);
    float d = (xD - UV.x) * (yA - UV.y) - (xA - UV.x) * (yD - UV.y);

    if (sign(a) == sign(b) && sign(b) == sign(c) && sign(c) == sign(d)) {

        float a1 = xA;
        float a2 = xB - xA;
        float a3 = xD - xA;
        float a4 = xA - xB + xC - xD;

        float b1 = yA;
        float b2 = yB - yA;
        float b3 = yD - yA;
        float b4 = yA - yB + yC - yD;

        float aa = a4 * b3 - a3 * b4;
        float bb = a4 * b1 - a1 * b4 + a2 * b3 - a3 * b2 + UV.x * b4 - UV.y * a4;
        float cc = a2 * b1 - a1 * b2 + UV.x*b2 - UV.y*a2;
        float det = sqrt(bb * bb - 4 * aa*cc);

        float m = (-bb + det)/(2 * aa);
        float l = (UV.x - a1 - a3 * m)/(a2 + a4 * m);

        return float3(l, m, 1);
    }
    else return 0;
}

float Fun_Mirror(float _UV, float _Offset)
{
    _UV += _Offset;
    _UV /= 2;
    _UV = abs(_UV * 2.0 - 1.0);

    return _UV;
}

float4 Main(in float2 In : TEXCOORD0) : COLOR0
{  
    float3 _In = Fun_Quad(In);
    In = frac(In);
    float4 _Render_Background_Left = tex2D(S2D_Background, float2(Fun_Mirror(In.x + _In.x / 100.0, 0.25), In.y + _In.y / 100.0)); // * (In.x);
    float4 _Render_Background_Right = tex2D(S2D_Background, float2(Fun_Mirror(In.x - _In.x / 100.0, -0.25), In.y - _In.y / 100.0)); // * (1 - In.x);

        float3 _Render_Background = lerp(_Render_Background_Left, _Render_Background_Right, In.x);
        
        float _Luminance = dot(_Render_Background, float3(0.299, 0.587, 0.114));

    float4 _Render_Texture = tex2D(S2D_Image, _In.xy);

    _Render_Texture.a *= _In.z;

        _Render_Texture.rgb = lerp(_Render_Texture.rgb, _Render_Background.rgb * _Render_Texture.rgb, _Mixing);
        _Render_Texture.rgb += (tex2D(S2D_Image, _In.xy / _Luminance / 10.0).rgb + _Render_Background.rgb / 3.0) * _Mixing * (1 - In.y) * _Luminance;

    return _Render_Texture;
}

/************************************************************/
/* Tech Main */
/************************************************************/

technique tech_main { pass P0 { PixelShader = compile ps_2_a Main(); } };
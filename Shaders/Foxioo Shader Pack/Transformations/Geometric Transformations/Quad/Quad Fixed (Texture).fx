/***********************************************************/

/* Autor shader: Foxioo and Adam Hawker (aka Sketchy / MuddyMole) */
/* Version shader: 1.0 (13.04.2025) */
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


float4 Main(in float2 In : TEXCOORD0) : COLOR0
{  
    float3 _In = Fun_Quad(In);

    float4 _Render_Texture = tex2D(S2D_Image, _In.xy);

    _Render_Texture.a *= _In.z;

    return _Render_Texture;
}

/************************************************************/
/* Tech Main */
/************************************************************/

technique tech_main { pass P0 { PixelShader = compile ps_2_a Main(); } };
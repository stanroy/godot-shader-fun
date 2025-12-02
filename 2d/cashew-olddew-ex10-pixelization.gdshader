shader_type canvas_item;

instance uniform bool see_uv = false;

//uniform float threshold: hint_range(0.01, 1.0, 0.01) = 1.0;

uniform float pixelation_factor: hint_range(0.0, 1000.0, 1.0);

void fragment() {
	
	//vec2 uv_centered = UV - vec2(0.5);
	//vec2 uv_pixelated = round(uv_centered/threshold) * threshold;
	//vec2 uv_final = uv_pixelated + vec2(0.5);
	//
	//COLOR = texture(TEXTURE, uv_final);
	vec2 uv = UV;
	vec2 pixelated_uv = floor(uv * (pixelation_factor+1.))/pixelation_factor;
	COLOR = texture(TEXTURE, pixelated_uv);
	

	if(see_uv){
		COLOR = vec4(uv,0.0,1.0);
	}
}

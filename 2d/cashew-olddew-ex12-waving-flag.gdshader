shader_type canvas_item;

instance uniform bool see_uv = false;
instance uniform float t: hint_range(-1.0,1.0) = 0.0;

void fragment() {
	
	vec2 uv = vec2(UV.x, 1.-UV.y);
	
	
	uv.x -= t * pow(uv.y,2);
	
	
	COLOR = texture(TEXTURE,vec2(uv.x, 1.-uv.y));
	

	if(see_uv){
		COLOR = vec4(uv,0.0,1.0);
	}
}

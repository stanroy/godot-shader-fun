shader_type canvas_item;

instance uniform bool see_uv = false;
uniform bool flip_h = false;
uniform bool flip_v = false;

void fragment() {
	vec2 uv = UV;
	
	if(flip_h){
		uv = vec2(1. - uv.x, uv.y);
	}
	
	if(flip_v){
		uv = vec2(uv.x, 1. - uv.y);
	}

	vec4 tex_col = texture(TEXTURE, uv);

	COLOR = tex_col;


	if(see_uv){
		COLOR = vec4(uv,0.0,1.0);
	}
}

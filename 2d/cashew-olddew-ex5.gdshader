shader_type canvas_item;

instance uniform bool see_uv = false;
uniform bool mirror_v = false;

void fragment() {
	vec2 uv = UV;


	if(mirror_v && uv.y > .5){
		uv.y = 1.-uv.y;
	}

	vec4 tex_col = texture(TEXTURE, uv);

	COLOR = tex_col;


	if(see_uv){
		COLOR = vec4(uv,0.0,1.0);
	}
}

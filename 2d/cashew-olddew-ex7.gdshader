shader_type canvas_item;

instance uniform bool see_uv = false;
uniform float wipe;

void fragment() {
	vec2 uv = UV;

	if(uv.x < sin(wipe * TIME / 5.)){
		discard;
	}

	vec4 tex_col = texture(TEXTURE, uv);

	COLOR = tex_col;

	if(see_uv){
		COLOR = vec4(uv,0.0,1.0);
	}
}

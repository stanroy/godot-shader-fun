shader_type canvas_item;

instance uniform bool see_uv = false;
instance uniform vec3 hurt_color: source_color;


void fragment() {
	vec2 uv = UV;
	vec4 tex_col = texture(TEXTURE, uv);
	
	COLOR = vec4(hurt_color.rgb, tex_col.a);
	
	
	
	if(see_uv){
		COLOR = vec4(uv,0.0,1.0);
	}
}


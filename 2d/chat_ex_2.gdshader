shader_type canvas_item;

instance uniform bool see_uvs = false;
uniform vec3 col1: source_color;
uniform vec3 col2: source_color;

void fragment() {
	vec2 uv = vec2(1. - pow(abs(UV.x),0.5), UV.y);
	vec4 texture_color = texture(TEXTURE, uv);
	
	
	COLOR = texture_color;

	if(see_uvs){
		COLOR = vec4(UV.x,UV.y,0.0,1.0);
	}

}

shader_type canvas_item;

instance uniform bool see_uvs = false;
uniform vec3 col1: source_color;
uniform vec3 col2: source_color;

uniform bool horizontal = false;

void fragment() {
	vec2 uv = UV;
	vec4 texture_color = texture(TEXTURE, uv);
	
	float t = 0.0;
	
	if(horizontal){
		t = uv.x;
	} else {
		t = uv.y;
	}
	

	
	
	vec3 col = mix(col1,col2,t);
	COLOR = vec4(col.rgb,texture_color.a);
	

	if(see_uvs){
		COLOR = vec4(UV.x,UV.y,0.0,1.0);
	}

}

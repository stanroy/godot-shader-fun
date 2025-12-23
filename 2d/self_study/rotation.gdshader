shader_type canvas_item;

void fragment() {
    vec2 st = UV;
	float angle = -TIME;
	st -= 0.5;
	
	// rotation
	vec2 rotated_uvs = vec2(st.x * cos(angle) - st.y * sin(angle),st.x * sin(angle) + st.y * cos(angle));
	st = rotated_uvs;
	st += 0.5;

	if(st.x > 1.0 || st.x < 0.0 || st.y > 1.0 || st.y < 0.0){
		// discard pixels outside of 0->1 range, which appear during rotation
		discard;
	}
	
	COLOR = texture(TEXTURE,st);
}

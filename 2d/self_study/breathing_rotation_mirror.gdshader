shader_type canvas_item;


instance uniform bool see_uv = false;

void fragment() {
    vec2 st = UV;
	float angle = TIME;
	
	// center uv 
	st -= 0.5;
	
	// flip uvs horizontally (in centered uv system)
	st.x *= -1.0;
	

	// scale
	float value = sin(TIME) * 3.5 + 3.5; // 3.5 to shape the sin function, * 3.5 affects the peak of the sin function, + 3.5 affects the range  
	float magnitude = 1. - (st.x*st.x) + (st.y*st.y); // magnitude of a vector to apply effect only on the edges of the sprite
	st *= 1. + ((magnitude * .1) * value);
	
	// rotation
	//vec2 rotated_uvs = vec2(st.x * cos(angle) - st.y * sin(angle),st.x * sin(angle) + st.y * cos(angle));
	//st = rotated_uvs;
	
	
	// uncenter
	st += 0.5;


	if(st.x > 1.0 || st.x < 0.0 || st.y > 1.0 || st.y < 0.0){
		// discard pixels outside of 0->1 range, which appear during rotation
		discard;
	}
	
	
	COLOR = texture(TEXTURE,st);
	
	
	if(see_uv){
		COLOR = vec4(st,0.0,1.0);
	}
}

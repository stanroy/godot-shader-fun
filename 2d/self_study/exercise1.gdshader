shader_type canvas_item;

void fragment() {
    vec2 st = UV;
	
	st -= 0.5;
	
	float value = sin(TIME) * 3.5 + 3.5;
	float magnitude = ((st.x*st.x) + (st.y*st.y));
	st *= (1. + ((magnitude * .1) * value));
	st += 0.5;
	
	if(st.x > 1.0 || st.x < 0.0 || st.y > 1.0 || st.y < 0.0){
		discard;
	}
	
	COLOR = texture(TEXTURE,st);
}

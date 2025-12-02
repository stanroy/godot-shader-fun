shader_type canvas_item;


//float plot(vec2 st) {
	//return smoothstep(0.01, 0.0, abs(1.0-st.y - st.x));
//}

float plot(vec2 st, float pct){
  return  smoothstep( pct-0.02, pct, 1.0-st.y) -
          smoothstep( pct, pct+0.02, 1.0-st.y);
}

void fragment() {
	
	vec2 st = FRAGCOORD.xy * SCREEN_PIXEL_SIZE;
	
	//float y = st.x;
	float y = sqrt(st.x * PI);
	
	vec3 color = vec3(y,y*-y,y);
	
	// plot a line
	float pct = plot(st,y);
	
	color = (1.0-pct)*color+pct*vec3(0.0,1.0,0.0);
	COLOR = vec4(color, 1.0);
}


shader_type canvas_item;


float plot(vec2 st, float pct) {
	return smoothstep(pct-0.02,pct,1.0 - st.y)-
	smoothstep(pct,pct+0.02,1.0 - st.y);
}

void fragment() {
	vec2 st = FRAGCOORD.xy * SCREEN_PIXEL_SIZE;

	// smooth interpolation between 0.1 and 0.9
	//float y = smoothstep(0.1,0.9, st.x);
	float y = smoothstep(0.2,0.5,st.x)-
	smoothstep(0.5,0.8,st.x);


	vec3 color = vec3(y);

	float pct = plot(st,y);
	color = (1.0-pct) * color + pct * vec3(0.0,1.0,0.0);

	COLOR = vec4(color,1.0);
}

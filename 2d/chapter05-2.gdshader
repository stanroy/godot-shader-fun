shader_type canvas_item;


float plot(vec2 st, float pct) {
	return smoothstep(pct-0.02,pct,1.0 - st.y)-smoothstep(pct,pct+0.02,1.0 - st.y);
}

void fragment() {
	vec2 st = FRAGCOORD.xy * SCREEN_PIXEL_SIZE;

	// step will return 0.0 unless the value is over 0.5
	// in that case it will return 1.0
	float y = step(0.7, st.x);

	vec3 color = vec3(y);

	float pct = plot(st,y);
	color = (1.0-pct) * color + pct * vec3(0.0,1.0,0.0);

	COLOR = vec4(color,1.0);
}

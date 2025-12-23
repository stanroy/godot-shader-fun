shader_type canvas_item;

uniform vec2 u_mouse;

void fragment() {
	//u_mouse is passed from a script
	//abs clamps sin, sin wave goes 0,1,0,-1, with abs it goes, 0,1,0,1 etc
	//COLOR = vec4(u_mouse,abs(sin(TIME)),1.0);

	//COLOR = vec4(u_mouse,sign(sin(TIME)),1.0);
	//COLOR = vec4(u_mouse,abs(cos(TIME)),1.0);
	

	vec2 st = FRAGCOORD.xy * SCREEN_PIXEL_SIZE;
	COLOR = vec4(st.x,st.y,0.0,1.0);

}

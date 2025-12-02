shader_type canvas_item;

instance uniform bool see_uv = false;
uniform float row;
uniform vec4 test_col: source_color;
uniform vec4 test_col2: source_color;

void fragment() {
	
	vec2 uv = vec2(UV.x, 1. - UV.y);
	
	COLOR = texture(TEXTURE, UV);
	//vec4 tex_col = texture(TEXTURE,uv);
	//
	//if(fract(uv.y * row + TIME) > 0.3 && fract(uv.y * row + TIME) <.6){
		//COLOR = vec4(test_col2.rgb,tex_col.a * test_col2.a);
	//} else {
		//COLOR = vec4(tex_col.rgb + test_col.rgb, tex_col.a); 
	//}
	
	float crt = sin(uv.y * 200.0 - TIME * 4.0) * .1 + .1;
	float crt2 = sin(uv.y * 20.0 - TIME * 2.0) * .1 + .1;
	COLOR.rgb += vec3(crt) + vec3(crt2);

	if(see_uv){
		COLOR = vec4(uv,0.0,1.0);
	}
}

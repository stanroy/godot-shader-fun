shader_type canvas_item;

instance uniform bool see_uvs;
uniform vec3 col1: source_color;
uniform vec3 col2: source_color;


float ease_out_elastic(float x) {
	float c4 = (2.*PI) / 3.;
	
	if(x == 0.){
		return 0.;
	} else if (x == 1.){
		return 1.;
	} else {
		return pow(2.,-10.*x) * sin((x*10. - 0.75) * c4) + 1.;
	}

}


void fragment(){
	
	float t = sin(TIME);
	vec3 gradient = mix(col1,col2,t);
	
	COLOR = vec4(gradient.rgb,1.0);
	
	if(see_uvs) {
		COLOR = vec4(UV.x, UV.y, 0.0,1.0);
	}
}

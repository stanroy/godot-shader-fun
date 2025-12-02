shader_type canvas_item;

instance uniform bool see_uv = false;

uniform float h: hint_range(-1.0, 1.0, 0.01) = 1.;
uniform float hs: hint_range(-1.0, 1.0, 0.01) = 1.;
uniform float v: hint_range(-1.0, 1.0, 0.01) = 1.;
uniform float vs: hint_range(-1.0, 1.0, 0.01) = 1.;

void fragment() {
	
	vec2 uv = vec2(UV.x, 1.-UV.y);
	
	//float wave = sin((uv.x - TIME)/hs) * vs + v;
	//float wave2 = sin((-uv.x - TIME)/hs) * vs + v;
	//
	//if(1.-uv.y > wave2){
		//discard;
	//}
	//
	//if(uv.y > wave){
		//discard;
	//}
	//
	
	uv.y += sin(uv.x * 5. - TIME * 2.) * .1 ;
	uv.y -= 0.5;
	uv.y *= 1.3;
	uv.y += 0.5;
	
	if(uv.x > 1.0 || uv.y > 1.0 || uv.x < 0.0 || uv.y < 0.0){ 
		discard;
	}
	
	COLOR = texture(TEXTURE,uv);
	

	if(see_uv){
		COLOR = vec4(uv,0.0,1.0);
	}
}

shader_type canvas_item;

instance uniform bool see_uv = false;
uniform float threshold: hint_range(0.0, 1.0, 0.01);

uniform float h: hint_range(-1.0, 1.0, 0.01);
uniform float hs: hint_range(-1.0, 1.0, 0.01);
uniform float v: hint_range(-1.0, 1.0, 0.01);
uniform float vs: hint_range(-1.0, 1.0, 0.01);

void fragment() {
	vec2 uv = vec2(UV.x, 1. - UV.y);

	float pulse = sin(TIME / hs) * vs + v;
	COLOR.a *= pulse;

	if(see_uv){
		COLOR = vec4(uv,0.0,1.0);
	}
}

shader_type canvas_item;

instance uniform bool see_uv = false;

uniform float rows: hint_range(0.0, 5.0, 1.0) = 1.;
uniform float columns: hint_range(0.0, 5.0, 1.0) = 1.;

void fragment() {
	
	vec2 uv = vec2(fract(UV.x * columns), fract(UV.y * rows));

	vec4 tex_col = texture(TEXTURE, uv);

	COLOR = tex_col;

	if(see_uv){
		COLOR = vec4(uv,0.0,1.0);
	}
}

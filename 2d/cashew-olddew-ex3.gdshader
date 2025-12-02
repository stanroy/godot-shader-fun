shader_type canvas_item;

instance uniform bool see_uv = false;
uniform float zoom = 1.;
uniform vec2 offset;

void fragment() {
	vec2 uv = UV;
	vec2 uv_centered = UV - vec2(.5);
	uv_centered *= zoom;
	uv = uv_centered + vec2(.5);
	vec4 tex_col = texture(TEXTURE, uv);

	COLOR = tex_col;


	if(see_uv){
		COLOR = vec4(uv,0.0,1.0);
	}
}

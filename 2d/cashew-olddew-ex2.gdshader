shader_type canvas_item;

instance uniform bool see_uv = false;
uniform float zoom = 1.;
uniform vec2 offset;

void fragment() {
	vec2 uv = UV * zoom + offset;
	vec4 tex_col = texture(TEXTURE, uv);

	COLOR = tex_col;


	if(see_uv){
		COLOR = vec4(uv,0.0,1.0);
	}
}

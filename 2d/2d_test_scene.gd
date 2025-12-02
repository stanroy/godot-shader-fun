extends Node2D

@export var mesh: MeshInstance2D


func _ready() -> void:
	var xd = ceil(2.0)
	var xd2 = floor(2.0)
	var xd3 = round(3.14)
	print(str(xd))
	print(str(xd2))
	print(str(xd3))

func _process(_delta: float) -> void:
	var mouse_pos:Vector2= get_viewport().get_mouse_position()
	var vp_size = get_viewport().get_visible_rect().size
	var mouse_norm = mouse_pos/vp_size
	
	(mesh.material as ShaderMaterial).set_shader_parameter("u_mouse",mouse_norm)
   


extends Node2D

onready var icon_material = get_node("icon").get_material()

func _ready():
	set_process(true)

func _process(delta):
	var final_icon_pos = get_global_mouse_pos()
	icon_material.set_shader_param("distance_to_light",final_icon_pos.distance_to(get_node("Light2D").get_pos()))
	get_node("icon").set_pos(final_icon_pos)

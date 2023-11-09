extends Node3D

var mesh_instance = null

func _ready():
	mesh_instance = get_node("Button")

func _on_Area_body_entered(body):
		hide_object()
		change_color()
		turn_on()

func hide_object():
	if $trumpet != null:
		$trumpet.queue_free()

func turn_on():
	if $trumpet != null:
		if !$KaChing.playing:
			$KaChing.play()
		
func change_color():
	var material = StandardMaterial3D.new()
	material.albedo_color = Color.RED
	mesh_instance.material_override = material

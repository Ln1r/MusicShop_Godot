extends StaticBody3D

# Turns the music on
func turn_on():
	if !$TrumpetSound.playing:
		$TrumpetSound.play()

# Turns the music off
func turn_off():
	if $TrumpetSound.playing:
		$TrumpetSound.stop()

# Upon Entering, play sound function and change text
func _on_Area_body_entered(body):
	turn_on()
	get_tree().get_root().get_node("InteractionLab").get_node("VRPlayerLocomotion").get_node("HUD").text = "Cost: 80"

# Upon Exiting, turn off sound and revert text
func _on_Area_body_exited(body):
	turn_off()
	get_tree().get_root().get_node("InteractionLab").get_node("VRPlayerLocomotion").get_node("HUD").text = "Cost:"

extends StaticBody3D

# Turns the music on
func turn_on():
	if !$DrumSound.playing:
		$DrumSound.play()

# Turns the music off
func turn_off():
	if $DrumSound.playing:
		$DrumSound.stop()

# Upon Entering, play sound function and change text
func _on_Area_body_entered(body):
		turn_on()
		get_tree().get_root().get_node("InteractionLab").get_node("VRPlayerLocomotion").get_node("HUD").text = "Cost: €500"

# Upon Exiting, turn off sound and revert text
func _on_Area_body_exited(body):
		turn_off()
		get_tree().get_root().get_node("InteractionLab").get_node("VRPlayerLocomotion").get_node("HUD").text = "Cost:"

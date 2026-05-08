extends Control

var debug_text = false

func _on_play_pressed() -> void:
	if CharacterDB.currrent_char == "":
		$LabelDebug.visible = true
		$Timer.start()
		return
	
	get_tree().change_scene_to_file("res://scene/world/world.tscn")


func _on_timer_timeout() -> void:
	$LabelDebug.visible = false

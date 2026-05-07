extends Panel

@export var texture_character : CharSelect = null
@export var player_id : String = ""
@onready var slot_select : Panel = $"."
var is_pressed = false


func _ready() -> void:
	if texture_character:
		$TextureRect.texture = texture_character.textureChar

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.is_pressed and event.button_index == MOUSE_BUTTON_LEFT:
			var mouse_pos = get_viewport().get_mouse_position()

			if slot_select.get_global_rect().has_point(mouse_pos):
				selectCharacter()
				is_pressed = true
				queue_redraw()
			else:
				is_pressed = false
				queue_redraw()

func _draw() -> void:
	if is_pressed:
		var color = Color(1.0, 1.0, 1.0)
		var thickness = 2
		draw_rect(Rect2(Vector2.ZERO, size), color, false, thickness)

func selectCharacter():
	CharacterDB.currrent_char = player_id

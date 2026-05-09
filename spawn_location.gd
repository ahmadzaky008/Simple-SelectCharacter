extends Node


func _ready() -> void:
	spawnChara()


func spawnChara():
	var id = CharacterDB.currrent_char
	var spawn = load(CharacterDB.charDB.get(id))
	var character = spawn.instantiate()
	character.position = $MarkerSpawn2D.position
	add_child(character)

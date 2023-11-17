extends TextureButton
class_name ShelfButton

@onready var shelfSpawn

# Called when the node enters the scene tree for the first time.

func _on_pressed():
	print("shelf spawned")
	GlobalVars.shelfPushed.emit()

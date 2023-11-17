extends Sprite2D

func _ready():
	self.hide()
	GlobalVars.shelfPushed.connect(showShelf)
	GlobalVars.shelfShown.connect(hideShelf)

func _process(delta):
	var mousePos = get_global_mouse_position()
	position = mousePos

func showShelf():
	self.show()

func hideShelf():
	self.hide()

extends MenuButton

@onready var popup_menu

func _ready():
	popup_menu = get_popup()
	popup_menu.connect("id_pressed", item_pressed)

func item_pressed(id):
	print(popup_menu.get_item_text(id))
	GlobalVars.item_id = id
	GlobalVars.menuSelection.emit()

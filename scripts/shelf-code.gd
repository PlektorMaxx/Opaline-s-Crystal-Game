extends Control

var inHand = false

func _ready():
	$shelfSprite.hide()
	$crystalPlace.hide()
	$crystalPlace2.hide()
	$crystalPlace3.hide()
	$crystalPlace4.hide()

func _on_pressed():
	$shelfSprite.show()
	$crystalPlace.show()
	$crystalPlace2.show()
	$crystalPlace3.show()
	$crystalPlace4.show()
	GlobalVars.shelfShown.emit()

func crystalInHand():
	inHand = !inHand

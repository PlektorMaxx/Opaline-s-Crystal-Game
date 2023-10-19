class_name Crystal
extends Node2D

#function that activates crystal sprite change
func _process(delta):
	GlobalVars.menuSelection.connect(spawnCrystal)

func spawnCrystal():
	changeTime(GlobalVars.item_id)
	change_texture(GlobalVars.item_id)

func change_texture(itemNo) :
	if(itemNo == 0):
		$crystalSprite.texture = load("res://assets/quartz-big.png");
	elif(itemNo == 1):
		$crystalSprite.texture = load("res://assets/emerald-big.png");
	elif(itemNo == 2):
		$crystalSprite.texture = load("res://assets/opal-big.png");
	elif(itemNo == 3):
		$crystalSprite.texture = load("res://assets/sapphirre-big.png");
	elif(itemNo == 4):
		$crystalSprite.texture = load("res://assets/onyx-big.png");

static func changeTime(itemNo):
	var waitTime = -1;
	if(itemNo == 0):
		waitTime = 4
		
	elif(itemNo == 1):
		waitTime = 8
		
	elif(itemNo == 2):
		waitTime = 12
		
	elif(itemNo == 3):
		waitTime = 16
		
	elif(itemNo == 4):
		waitTime = 20
	
	return waitTime;

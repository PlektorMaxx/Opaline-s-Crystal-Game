class_name Crystal
extends Node2D

#function that activates crystal sprite change
func _ready():
	$sparkleAnim.hide()
	GlobalVars.menuSelection.connect(createCrystal)

#timer function
func _on_timer_timeout():
	spawnCrystal()
	$waitingLabel.text = ""
	GlobalVars.done.emit()
	$sparkleAnim.show()
	$sparkleAnim.play("sparkle")
	$keepButton.show()
	$deleteButton.show()

func spawnCrystal():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	
	if(rng.randf() > 0.8):
		GlobalVars.one = true
	if(rng.randf() > 0.85):
		GlobalVars.two = true
	if(rng.randf() > 0.9):
		GlobalVars.three = true
	
	randomTrait(GlobalVars.one, GlobalVars.two, GlobalVars.three, GlobalVars.item_id)
	change_texture(GlobalVars.item_id)

func createCrystal():
	clearCrystal()
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	GlobalVars.r = rng.randf()
	GlobalVars.g = rng.randf()
	GlobalVars.b = rng.randf()
	$crystalSprite.self_modulate = Color(GlobalVars.r, GlobalVars.g, GlobalVars.b)
	$shadeSprite.self_modulate = Color(GlobalVars.r, GlobalVars.g, GlobalVars.b)
	$rareTrait/traitOne.self_modulate = Color(GlobalVars.r, GlobalVars.g, GlobalVars.b)
	
	#rerandomizing the color so the multicolor actually shows up
	GlobalVars.tr = rng.randf()
	GlobalVars.tg = rng.randf()
	GlobalVars.tb = rng.randf()
	$rareTrait/traitTwo.self_modulate = Color(GlobalVars.tr, GlobalVars.tg, GlobalVars.tb)
	
	#changing the timer's time based on itemId
	var time = changeTime(GlobalVars.item_id)
	
	$Timer.wait_time = time;
	$Timer.start();
	$waitingLabel.text = "Waiting..."

func clearCrystal():
	#remove old stuff
	$sparkleAnim.hide()
	$crystalSprite.texture = null;
	$shadeSprite.texture = null;
	$detailSprite.texture = null;
	$rareTrait/traitOne.texture = null;
	$rareTrait/traitTwo.texture = null;
	
	get_node("crystalSprite").set_flip_v(false)
	get_node("shadeSprite").set_flip_v(false)
	get_node("detailSprite").set_flip_v(false)
	get_node("rareTrait/traitOne").set_flip_v(false)
	get_node("rareTrait/traitTwo").set_flip_v(false)
	$rareLabel.text = ""

func change_texture(itemNo) :
	if(itemNo == 0):
		$crystalSprite.texture = load("res://assets/quartz-big.png");
		$shadeSprite.texture = load("res://assets/quartz-big-shade.png");
	elif(itemNo == 1):
		$crystalSprite.texture = load("res://assets/emerald-big.png");
		$shadeSprite.texture = load("res://assets/emerald-big-shade.png");
	elif(itemNo == 2):
		$crystalSprite.texture = load("res://assets/opal-big.png");
		$shadeSprite.texture = load("res://assets/opal-uncolored-shade.png"); #naming inconsistency i know. whoops
		$detailSprite.texture = load("res://assets/opal-uncolored-details.png");
	elif(itemNo == 3):
		$crystalSprite.texture = load("res://assets/sapphirre-big.png");
		$shadeSprite.texture = load("res://assets/sapphirre-big-shade.png");
	elif(itemNo == 4):
		$crystalSprite.texture = load("res://assets/onyx-big.png");
		$shadeSprite.texture = load("res://assets/onyx-big-shade.png");

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

func randomTrait(one, two, three, itemNo):
	if(one):
		$rareLabel.text = "Rare!"
		if(itemNo == 0):
			$rareTrait/traitOne.texture = load("res://assets/quartz-rare1-big.png");
			print("-quartz 1")
		if(itemNo == 1):
			$rareTrait/traitOne.texture = load("res://assets/emerald-rare1-big.png");
			print("-emerald 1")
		if(itemNo == 2):
			$rareTrait/traitOne.texture = load("res://assets/opal-rare1-big.png");
			print("-opal 1")
		if(itemNo == 3):
			$rareTrait/traitOne.texture = load("res://assets/sapphirre-rare1-big.png");
			print("-sapphire 1")
		if(itemNo == 4):
			$rareTrait/traitOne.texture = load("res://assets/onyx-rare1-big.png");
			print("-onyx 1")
	if(two):
		$rareLabel.text = "Rare!"
		if(itemNo == 0):
			$rareTrait/traitTwo.texture = load("res://assets/quartz-rare2-big.png");
			print("-quartz 2")
		if(itemNo == 1):
			$rareTrait/traitTwo.texture = load("res://assets/emerald-rare2-big.png");
			print("-emerald 2")
		if(itemNo == 2):
			$rareTrait/traitTwo.texture = load("res://assets/opal-rare2-big.png");
			print("-opal 2")
		if(itemNo == 3):
			$rareTrait/traitTwo.texture = load("res://assets/sapphirre-rare2-big.png");
			print("-sapphire 2")
		if(itemNo == 4):
			$rareTrait/traitTwo.texture = load("res://assets/onyx-rare2-big.png");
			print("-onyx 2")
	if(three):
		$rareLabel.text = "Rare!"
		get_node("crystalSprite").set_flip_v(true)
		get_node("shadeSprite").set_flip_v(true)
		get_node("detailSprite").set_flip_v(true)
		get_node("rareTrait/traitOne").set_flip_v(true)
		get_node("rareTrait/traitTwo").set_flip_v(true)
		
		if(itemNo == 0):
			print("-quartz 3")
		if(itemNo == 1):
			print("-emerald 3")
		if(itemNo == 2):
			print("-opal 3")
		if(itemNo == 3):
			print("-sapphire 3")
		if(itemNo == 4):
			print("-onyx 3")

func _on_keep_button_pressed():
	$keepButton.hide()
	$deleteButton.hide()
	GlobalVars.keep.emit()
	clearCrystal()

func _on_delete_button_pressed():
	$keepButton.hide()
	$deleteButton.hide()
	GlobalVars.item_id = -1 
	GlobalVars.isFlipped = false
	
	GlobalVars.r
	GlobalVars.g
	GlobalVars.b
	
	GlobalVars.tr
	GlobalVars.tg
	GlobalVars.tb
	
	GlobalVars.one = false
	GlobalVars.two = false
	GlobalVars.three = false
	clearCrystal()

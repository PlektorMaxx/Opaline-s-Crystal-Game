class_name Crystal
extends Node2D

#function that activates crystal sprite change
func _ready():
	GlobalVars.menuSelection.connect(spawnCrystal)

func spawnCrystal():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var r = rng.randf()
	var g = rng.randf()
	var b = rng.randf()
	$crystalSprite.self_modulate = Color(r, g, b)
	$rareTrait/traitOne.self_modulate = Color(r, g, b)
	
	#rerandomizing the color so the multicolor actually shows up
	r = rng.randf()
	g = rng.randf()
	b = rng.randf()
	$rareTrait/traitTwo.self_modulate = Color(r, g, b)
	
	var one = false
	var two = false
	var three = false
	
	if(rng.randf() > 0.8):
		one = true
	if(rng.randf() > 0.85):
		two = true
	if(rng.randf() > 0.9):
		three = true
	
	#changing the timer's time based on itemId
	changeTime(GlobalVars.item_id)
	#and making sure the final texture is right
	change_texture(GlobalVars.item_id)
	
	#remove old traits
	$rareTrait/traitOne.texture = null;
	$rareTrait/traitTwo.texture = null;
	get_node("crystalSprite").set_flip_v(false)
	get_node("rareTrait/traitOne").set_flip_v(false)
	get_node("rareTrait/traitTwo").set_flip_v(false)
	
	#generate new traits
	randomTrait(one, two, three, GlobalVars.item_id)

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

func randomTrait(one, two, three, itemNo):
	if(one):
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
		get_node("crystalSprite").set_flip_v(true)
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

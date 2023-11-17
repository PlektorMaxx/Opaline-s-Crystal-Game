extends Button

func generate():
	if GlobalVars.item_id == 0:
		$baseSprite.self_modulate = Color(GlobalVars.r, GlobalVars.g, GlobalVars.b)
		$baseSprite.texture = load("res://assets/quartz-small.png")
		$shadow.self_modulate = Color(GlobalVars.r, GlobalVars.g, GlobalVars.b)
		$shadow.texture = load("res://assets/quartz-shade-small.png")
		
		if GlobalVars.one:
			$rare1.self_modulate = Color(GlobalVars.r, GlobalVars.g, GlobalVars.b)
			$rare1.texture = load("res://assets/quartz-rare1-small.png")
		if GlobalVars.two:
			$rare2.self_modulate = Color(GlobalVars.tr, GlobalVars.tg, GlobalVars.tb)
			$rare2.texture = load("res://assets/quartz-rare2-small.png")
		if GlobalVars.three:
			get_node("baseSprite").set_flip_v(true)
			get_node("rare1").set_flip_v(true)
			get_node("rare2").set_flip_v(true)
			get_node("detail").set_flip_v(true)
			get_node("shadow").set_flip_v(true)
		
	elif GlobalVars.item_id == 1:
		$baseSprite.self_modulate = Color(GlobalVars.r, GlobalVars.g, GlobalVars.b)
		$baseSprite.texture = load("res://assets/emerald-small.png")
		$shadow.self_modulate = Color(GlobalVars.r, GlobalVars.g, GlobalVars.b)
		$shadow.texture = load("res://assets/emerald-shade-small.png")
		
		if GlobalVars.one:
			$rare1.self_modulate = Color(GlobalVars.r, GlobalVars.g, GlobalVars.b)
			$rare1.texture = load("res://assets/emerald-rare1-small.png")
		if GlobalVars.two:
			$rare2.self_modulate = Color(GlobalVars.tr, GlobalVars.tg, GlobalVars.tb)
			$rare2.texture = load("res://assets/emerald-rare2-small.png")
		if GlobalVars.three:
			get_node("baseSprite").set_flip_v(true)
			get_node("rare1").set_flip_v(true)
			get_node("rare2").set_flip_v(true)
			get_node("detail").set_flip_v(true)
			get_node("shadow").set_flip_v(true)
		
	elif GlobalVars.item_id == 2:
		$baseSprite.self_modulate = Color(GlobalVars.r, GlobalVars.g, GlobalVars.b)
		$baseSprite.texture = load("res://assets/opal-small.png")
		$shadow.self_modulate = Color(GlobalVars.r, GlobalVars.g, GlobalVars.b)
		$shadow.texture = load("res://assets/opal-shade-small.png")
		
		$detail.texture = load("res://assets/opal-details-small.png")
		
		if GlobalVars.one:
			$rare1.self_modulate = Color(GlobalVars.r, GlobalVars.g, GlobalVars.b)
			$rare1.texture = load("res://assets/opal-rare1-small.png")
		if GlobalVars.two:
			$rare2.self_modulate = Color(GlobalVars.tr, GlobalVars.tg, GlobalVars.tb)
			$rare2.texture = load("res://assets/opal-rare2-small.png")
		if GlobalVars.three:
			get_node("baseSprite").set_flip_v(true)
			get_node("rare1").set_flip_v(true)
			get_node("rare2").set_flip_v(true)
			get_node("detail").set_flip_v(true)
			get_node("shadow").set_flip_v(true)
		
	elif GlobalVars.item_id == 3:
		$baseSprite.self_modulate = Color(GlobalVars.r, GlobalVars.g, GlobalVars.b)
		$baseSprite.texture = load("res://assets/sapphirre-small.png")
		$shadow.self_modulate = Color(GlobalVars.r, GlobalVars.g, GlobalVars.b)
		$shadow.texture = load("res://assets/sapphirre-shade-small.png")
		
		if GlobalVars.one:
			$rare1.self_modulate = Color(GlobalVars.r, GlobalVars.g, GlobalVars.b)
			$rare1.texture = load("res://assets/sapphirre-rare1-small.png")
		if GlobalVars.two:
			$rare2.self_modulate = Color(GlobalVars.tr, GlobalVars.tg, GlobalVars.tb)
			$rare2.texture = load("res://assets/sapphirre-rare2-small.png")
		if GlobalVars.three:
			get_node("baseSprite").set_flip_v(true)
			get_node("rare1").set_flip_v(true)
			get_node("rare2").set_flip_v(true)
			get_node("detail").set_flip_v(true)
			get_node("shadow").set_flip_v(true)
		
	elif GlobalVars.item_id == 4:
		$baseSprite.self_modulate = Color(GlobalVars.r, GlobalVars.g, GlobalVars.b)
		$baseSprite.texture = load("res://assets/onyx-small.png")
		$shadow.self_modulate = Color(GlobalVars.r, GlobalVars.g, GlobalVars.b)
		$shadow.texture = load("res://assets/onyx-shade-small.png")
		
		if GlobalVars.one:
			$rare1.self_modulate = Color(GlobalVars.r, GlobalVars.g, GlobalVars.b)
			$rare1.texture = load("res://assets/onyx-rare1-small.png")
		if GlobalVars.two:
			$rare2.self_modulate = Color(GlobalVars.tr, GlobalVars.tg, GlobalVars.tb)
			$rare2.texture = load("res://assets/onyx-rare2-small.png")
		if GlobalVars.three:
			get_node("baseSprite").set_flip_v(true)
			get_node("rare1").set_flip_v(true)
			get_node("rare2").set_flip_v(true)
			get_node("detail").set_flip_v(true)
			get_node("shadow").set_flip_v(true)

func _on_pressed():
	generate()

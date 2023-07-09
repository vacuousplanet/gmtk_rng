extends Control

const hero_scene = preload("res://hero.tscn")
const fork_scene = preload("res://fork.tscn")

var item_deck = {"fork": fork_scene}

var start_battle = false

var fighter = []
var current_fighter = 0

var hero = hero_scene.instance()
var fork = fork_scene.instance()

# Called when the node enters the scene tree for the first time.
func _ready():
	
	start_battle = true
	pass # Replace with function body.
	
func init_battle(hero, enemy):
	fighter.clear()
	fighter.append(hero)
	fighter.append(enemy)
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if(start_battle):
		init_battle(draw_item(), draw_item())
		#fighters[][0] is the fighters health
		while(fighter[current_fighter][0] > 0):
			print("ok")
			
			
		start_battle = false
	pass
	
func draw_item():
	return  {"health": hero.health, "attack": fork.attack, "defense": fork.defense}

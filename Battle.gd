extends Control

const hero_scene = preload("res://hero.tscn")
const fork_scene = preload("res://fork.tscn")

var item_deck = {"fork": fork_scene}




var hero = hero_scene.instance()
var fork = fork_scene.instance()

# Called when the node enters the scene tree for the first time.
func _ready():
	
	var p1 = {"health": hero.health, "attack": fork.attack, "defense": fork.defense}

	pass # Replace with function body.
	
func init_battle(hero, enemy):
	
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

extends Control

const hero_scene = preload("res://hero.tscn")
const fork_scene = preload("res://fork.tscn")
var hero = hero_scene.instance()
var fork = fork_scene.instance()

var item_deck = {"fork": fork}

var start_battle = false
var turn_in_process

var fighter = []
var current_fighter = 0




# Called when the node enters the scene tree for the first time.
func _ready():
	start_battle = true
	$AnimationPlayer.connect("animation_finished", on_animation_complete)
	init_battle(draw_item(), draw_item())
	pass # Replace with function body.
	
func init_battle(hero, enemy):
	fighter.clear()
	fighter.append(hero)
	fighter.append(enemy)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if(!start_battle || turn_in_process):
		pass
		#fighters[][0] is the fighters health
	if(fighter[current_fighter][0] > 0):
		take_turn()		
	else:
		start_battle = false
	
func take_turn():
	turn_in_process = true
	var damage = calculate_attack_damage(fighter[current_fighter][1], fighter[other_fighter()][2])
	fighter[other_fighter()][0] = max(fighter[other_fighter()][0] - damage, 0)
	update_health(fighter[current_fighter])
	do_animation()
	
	pass

func draw_item():
	return  {"health": hero.health, "attack": fork.attack, "defense": fork.defense}
	
func other_fighter():
	if(current_fighter == 0):
		return 1
	return 0
	
func update_health(fighter):
	print("update_health is happening")
	
func do_animation():
	$AnimationPlayer.play("MyAnimation")
	
	
func on_animation_complete():
	current_fighter = other_fighter()
	turn_in_process = false


func calculate_attack_damage(atk, def):
	return max(atk - def, 1)

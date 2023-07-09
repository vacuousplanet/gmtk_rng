extends Control

const hero_scene = preload("res://hero.tscn")
const fork_scene = preload("res://fork.tscn")
var hero = hero_scene.instance()
var fork = fork_scene.instance()


var item_deck = {
	"fork0": fork,			
	"fork1": fork,
	"fork2": fork,
	"fork3": fork,
	"fork4": fork,
	"fork5": fork,
	"fork6": fork,
	"fork7": fork,
	"fork8": fork,
	"fork9": fork
}


var enemy_deck = {
	
}

# should be 3 items next when time to pick unless they're all used up
var enemy_queue = []
var next_enemies = []
var item_queue = []
var next_items = []


# left center right
const card_position = [Vector2(-1, 0), Vector2(0, 0),  Vector2(1, 0)]



var begin_phase = false
var doing_animation = false


# Called when the node enters the scene tree for the first time.
func _ready():
	for key in item_deck:
		item_queue.append(item_deck[key])
	for key in enemy_deck:
		enemy_queue.append(enemy_deck[key])	
	
	begin_phase = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(!begin_phase || doing_animation):
		pass
	
	# choose enemy phase
	if(next_enemies.size() < 3 && enemy_queue.size() > 0):
		next_enemies.append(draw_cards(enemy_queue, 3 - next_enemies.size()))
		
	# instantiate cards
	
	
	
	
	
	
func draw_cards(queue, num):
	var ret = []
	for i in range(num):
		if queue.size() < 0:
			break
		var item = queue.pop_front() 
	return ret
	

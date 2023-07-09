extends Node2D

@export_enum("EPIC:0", "LEGENDARY:1", "RARE:2") var rarity: int

@export var PTS: int = 100

var ATK: int = 100:
	get:
		return ATK
	set(val):
		ATK = val
		DEF = PTS - ATK

var DEF: int = 0:
	get:
		return DEF
	set(val):
		DEF = val
		ATK = PTS - ATK
		

# Called when the node enters the scene tree for the first time.
func _ready():
	$CardBase.frame = rarity;
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass

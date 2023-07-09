extends Node2D

@export_enum("EPIC:0", "LEGENDARY:1", "RARE:2") var rarity: int

@export var PTS: int = 100
@export var HP: int = 100

var ATK: int = 100:
	get:
		return ATK
	set(val):
		ATK = val
		$ATK_slider.value = ATK
		$ATK_label.text = str(ATK)
		if DEF + ATK == PTS:
			return
		DEF = PTS - ATK

var DEF: int = 0:
	get:
		return DEF
	set(val):
		DEF = val
		$DEF_slider.value = DEF
		$ATK_label.text = str(DEF)
		if DEF + ATK == PTS:
			return
		ATK = PTS - DEF
		

# Called when the node enters the scene tree for the first time.
func _ready():
	$HP_label.text = "HP: " + str(HP)
	$ATK_slider.max_value = PTS
	$DEF_slider.max_value = PTS
	$EnemyName_label.text = name
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass

func _on_atk_slider_value_changed(value):
	ATK = value
	$ATK_label.text = str(ATK)
	pass # Replace with function body.


func _on_def_slider_value_changed(value):
	DEF = value
	$DEF_label.text = str(DEF)
	pass # Replace with function body.

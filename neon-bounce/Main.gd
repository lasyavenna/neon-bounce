extends Node2D

@onready var player = $Player
@onready var score_label = $CanvasLayer/ScoreLabel

var score = 0

func _ready():
	score_label.text = "Score: 0"

func update_score(value):
	score += value
	score_label.text = "Score: " + str(score)

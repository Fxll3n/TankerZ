class_name Tank
extends CharacterBody2D

@export_category("Base Stats")
@export var move_speed: float
@export var turret_rotation_speed: float
@export var max_health: float
@export var current_health: float
@export_category("Node Refrences")
@export var modifiers: Array[Modifier]
@export var magazine: Array[Bullet]

func _ready() -> void:
	name = str(get_multiplayer_authority())

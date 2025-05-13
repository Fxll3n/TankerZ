class_name Tank
extends CharacterBody2D

@export var mov_speed: float
@export var barrel_rot_speed: float
@export var magazine: Array[Bullet]

@export_category("Node Refrences")

@export var turret_scene: PackedScene
@export var body_scene: PackedScene

var turret: Node2D
var body: Node2D

func _ready() -> void:
	turret = turret_scene.instantiate()
	body = body_scene.instantiate()
	
	add_child(turret)
	add_child(body)
	
	for child in body.get_children():
		if child is Marker2D:
			turret.position = child.position

func _process(delta: float) -> void:
	turn_barrel()

func _physics_process(delta: float) -> void:
	pass

func turn_barrel():
	var mouse_pos = get_global_mouse_position()
	turret.look_at(mouse_pos)

func set_up():
	var groups: Array[StringName] = get_groups()
	
	if groups.has("Blue") and not groups.has("Red"):
		pass
	elif groups.has("Red") and not groups.has("Blue"):
		pass

extends Node3D

@export var current_weapon : Weapon

func _physics_process(delta: float) -> void:
	if current_weapon:
		current_weapon.weapon_process(delta)

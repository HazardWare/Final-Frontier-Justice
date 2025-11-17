class_name Weapon
extends Node3D

@export var weapon_name : String ## Weapon's shorthand name. (I.E: Glock, M1911)
@export var weapon_full_name : String ## Weapon's full name (I.E: Glock 18 Semi-Automatic Pistol, Colt Model M1911A1 Semi-Automatic Pistol)

@export_group("Ammo Info")
@export var ammo_reserve : int
@export var ammo_loaded : int

@export_group("Actions")
@export var primary_attack : Attack

#plingar

var CURRENT_STATE : WEAPON_STATES

enum WEAPON_STATES {
	READY,
	FIRE,
	RAISE,
	LOWER,
	RELOAD
}

func weapon_process(delta: float) -> void:
	match CURRENT_STATE:
		WEAPON_STATES.READY:
			weapon_ready()
		WEAPON_STATES.FIRE:
			weapon_fire()
		WEAPON_STATES.RAISE:
			weapon_raise()
		WEAPON_STATES.LOWER:
			weapon_lower()
		WEAPON_STATES.RELOAD:
			weapon_reload()


func weapon_ready() -> void: push_error("State not defined: weapon_ready")
func weapon_fire() -> void: push_error("State not defined: weapon_fire")
func weapon_raise() -> void: push_error("State not defined: weapon_raise")
func weapon_lower() -> void: push_error("State not defined: weapon_lower")
func weapon_reload() -> void: push_error("State not defined: weapon_reload")

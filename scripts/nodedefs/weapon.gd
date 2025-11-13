@abstract class_name Weapon
extends Node3D

@export_category("Basic Info")
@export var weapon_name : String ## Weapon's shorthand name. (I.E: Glock, M1911)
@export var weapon_full_name : String ## Weapon's full name (I.E: Glock 18 Semi-Automatic Pistol, Colt Model M1911A1 Semi-Automatic Pistol)

var CURRENT_STATE : WEAPON_STATES

enum WEAPON_STATES {
	READY,
	FIRE,
	RAISE,
	LOWER,
	RELOAD
}

func _process(delta: float) -> void:
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


@abstract func weapon_ready() -> void
@abstract func weapon_fire() -> void
@abstract func weapon_raise() -> void
@abstract func weapon_lower() -> void
@abstract func weapon_reload() -> void

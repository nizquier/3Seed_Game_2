/// @description Insert description here
// You can write your code in this editor

enum States {
	Chasing,
	Regular
}

enum EnemyDirection{
	Left,
	Right
}

hsp = hspeed
state = States.Regular
EDir = EnemyDirection.Left

sprite_enemy = spr_genieIdle
sprite_enemy_hit = spr_genieHit
sprite_enemy_chase = spr_genieIdleFollow
object_enemy_death = obj_genieDeath
sprite_enemy_attack = spr_genieAttack
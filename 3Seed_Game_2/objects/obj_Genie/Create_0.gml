/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

image_speed = 1;
state = ENEMYSTATE.WANDER;

//enemy sprites
sprIdle = spr_genieIdle;
sprMove = spr_genieIdleFollow;
sprMAttack = spr_genieAttack
sprHurt = spr_genieHit;
sprDeath = spr_genieDeath;

//enemy script
enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.WANDER] = GenieWander;
enemyScript[ENEMYSTATE.CHASE] = GenieChase;
enemyScript[ENEMYSTATE.ATTACK] = GenieAttack;
enemyScript[ENEMYSTATE.HURT] = GenieHurt;
enemyScript[ENEMYSTATE.DIE] = GenieDie;
enemyScript[ENEMYSTATE.WAIT] = EnemyWait;

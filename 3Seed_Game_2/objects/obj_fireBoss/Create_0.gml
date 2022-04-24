/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

sprite_collision_mask(spr_fireBoss, true, 1, 0, 0, 0, 0, 0, 0);

image_speed = 1;
state = ENEMYSTATE.WANDER;

//enemy sprites
sprIdle = spr_fireBoss;
sprMove = spr_fireBossWalk;
sprMAttack = spr_fireBossAtk;
sprHurt = spr_fireBoss;
sprDeath = spr_fireBossDeath;

//enemy script
enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.WANDER] = GeneralEnemyWander;
enemyScript[ENEMYSTATE.CHASE] = GeneralEnemyChase;
enemyScript[ENEMYSTATE.ATTACK] = GeneralEnemyAttack;
enemyScript[ENEMYSTATE.HURT] = GeneralEnemyHurt;
enemyScript[ENEMYSTATE.DIE] = GeneralEnemyDie;
enemyScript[ENEMYSTATE.WAIT] = EnemyWait;

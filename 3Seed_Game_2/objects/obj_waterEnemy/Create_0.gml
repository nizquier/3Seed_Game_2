/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

sprite_collision_mask(spr_waterEnemy, true, 1, 0, 0, 0, 0, 0, 0);

image_speed = 1;
state = ENEMYSTATE.WANDER;

//enemy sprites
sprIdle = spr_waterEnemy;
sprMove = spr_waterEnemyWalk;
sprMAttack = spr_waterEnemyAtk;
sprHurt = spr_waterEnemy;
sprDeath = spr_waterEnemyDeath;

//enemy script
enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.WANDER] = GeneralEnemyWander;
enemyScript[ENEMYSTATE.CHASE] = GeneralEnemyChase;
enemyScript[ENEMYSTATE.ATTACK] = GeneralEnemyAttack;
enemyScript[ENEMYSTATE.HURT] = GeneralEnemyHurt;
enemyScript[ENEMYSTATE.DIE] = GeneralEnemyDie;
enemyScript[ENEMYSTATE.WAIT] = EnemyWait;

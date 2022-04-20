/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

sprite_collision_mask(spr_fireEnemy, true, 1, 0, 0, 0, 0, 0, 0);

image_speed = 1;
state = ENEMYSTATE.WANDER;

//enemy sprites
sprIdle = spr_fireEnemy;
sprMove = spr_fireEnemyWalk;
sprMAttack = spr_fireEnemyAtk;
sprHurt = spr_fireEnemy;
sprDeath = spr_fireEnemyDeath;

//enemy script
enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.WANDER] = GeneralEnemyWander;
enemyScript[ENEMYSTATE.CHASE] = GeneralEnemyChase;
enemyScript[ENEMYSTATE.ATTACK] = GeneralEnemyAttack;
enemyScript[ENEMYSTATE.HURT] = GeneralEnemyHurt;
enemyScript[ENEMYSTATE.DIE] = GeneralEnemyDie;
enemyScript[ENEMYSTATE.WAIT] = EnemyWait;

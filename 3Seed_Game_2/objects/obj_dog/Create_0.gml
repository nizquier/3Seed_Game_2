/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(layer_exists(layer_get_id("pth_dog01"))) path_start(pth_dog01, 1, path_action_reverse, 2);

//sprite_collision_mask(spr_dog, true, 1, 0, 0, 0, 0, 0, 0);

image_speed = 1;
state = ENEMYSTATE.WANDER;

//enemy sprites
sprIdle = spr_dog;
sprMove = spr_dog;
sprMAttack = spr_dog;
sprHurt = spr_dog;
sprDeath = spr_dog;

//enemy script
enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.WANDER] = GeneralEnemyWander;
enemyScript[ENEMYSTATE.CHASE] = GeneralEnemyChase;
enemyScript[ENEMYSTATE.ATTACK] = GeneralEnemyAttack;
enemyScript[ENEMYSTATE.HURT] = GeneralEnemyHurt;
enemyScript[ENEMYSTATE.DIE] = GeneralEnemyDie;
enemyScript[ENEMYSTATE.WAIT] = EnemyWait;

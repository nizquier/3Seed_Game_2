/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(layer_exists(layer_get_id("pth_pumkin01"))) path_start(pth_pumkin01, 1, path_action_reverse, 2);

image_speed = 1;
state = ENEMYSTATE.WANDER;

//enemy sprites
sprIdle = spr_pumkin_dude;
sprMove = spr_pumkin_dude;
sprMAttack = spr_pumkin_dude;
sprHurt = spr_pumkin_dude;
sprDeath = spr_pumkin_dude;

//enemy script
enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.WANDER] = GeneralEnemyWander;
enemyScript[ENEMYSTATE.CHASE] = GeneralEnemyChase;
enemyScript[ENEMYSTATE.ATTACK] = GeneralEnemyAttack;
enemyScript[ENEMYSTATE.HURT] = GeneralEnemyHurt;
enemyScript[ENEMYSTATE.DIE] = GeneralEnemyDie;
enemyScript[ENEMYSTATE.WAIT] = EnemyWait;

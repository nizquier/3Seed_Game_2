/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

image_speed = 0;
state = ENEMYSTATE.IDLE

//enemy sprites
sprIdle = spr_golemIdle
sprMove = spr_golemChase;
sprMAttack = spr_golemMelee
sprRAttack = spr_golemRange;
sprHurt = spr_golemHurt;
sprDeath = spr_golemDeath;

//enemy script
enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.WANDER] = GolemWander;
enemyScript[ENEMYSTATE.CHASE] = GolemChase;
enemyScript[ENEMYSTATE.ATTACK] = GolemAttack;
enemyScript[ENEMYSTATE.RANGE] = GolemRangeAttack;
enemyScript[ENEMYSTATE.HURT] = GolemHurt;
enemyScript[ENEMYSTATE.DIE] = GolemDie;
enemyScript[ENEMYSTATE.WAIT] = EnemyWait;

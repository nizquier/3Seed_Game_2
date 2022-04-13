/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

image_speed = 0;
state = ENEMYSTATE.IDLE
xTo = xstart;
yTo = ystart;
dir = 0;
timePassed = 0;
waitDuration = 60;
wait = 0;
hsp = hspeed;
vsp = vspeed;
aggroCheck = 0;
aggroCheckDuration = 5;

//enemy sprites
sprIdle = spr_golemIdle
sprMove = spr_golemChase;
sprMAttack = spr_golemMelee
sprRAttack = spr_golemRange;
sprHurt = spr_golemHurt;
sprDeath = spr_golemDeath;

//Enemy Stats
timePassed = 0
waitDuration = 60;
wait = 0;
stateTarget = state;
statePrevious = state;
stateWait = 0;
stateWaitDuration = 0;

//enemy script
enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.WANDER] = GolemWander;
enemyScript[ENEMYSTATE.CHASE] = GolemChase;
enemyScript[ENEMYSTATE.ATTACK] = GolemAttack;
enemyScript[ENEMYSTATE.RANGE] = GolemRangeAttack;
enemyScript[ENEMYSTATE.HURT] = GolemHurt;
enemyScript[ENEMYSTATE.DIE] = GolemDie;
enemyScript[ENEMYSTATE.WAIT] = EnemyWait;

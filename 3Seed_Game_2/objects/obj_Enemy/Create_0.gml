/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

image_speed = 1;
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
sprIdle = -1;
sprMove = -1;
sprMAttack = -1;
sprHurt = -1;
sprDeath = -1;

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
enemyScript[ENEMYSTATE.WANDER] = -1;
enemyScript[ENEMYSTATE.CHASE] = -1;
enemyScript[ENEMYSTATE.ATTACK] = -1;
enemyScript[ENEMYSTATE.RANGE] = -1;
enemyScript[ENEMYSTATE.HURT] = -1;
enemyScript[ENEMYSTATE.DIE] = -1;
enemyScript[ENEMYSTATE.WAIT] = EnemyWait;

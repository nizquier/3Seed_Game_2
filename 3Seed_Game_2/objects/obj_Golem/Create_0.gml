/// @description Insert description here

state = ENEMYSTATE.IDLE
hspeed = 0;
vspeed = 0;
xTo = xstart;
yTo = ystart;
dir = 0;
timePassed = 0;
waitDuration = 60;
wait = 0;
hsp = hspeed;
vsp = vspeed

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
enemyScript[ENEMYSTATE.CHASE] = -1;
enemyScript[ENEMYSTATE.ATTACK] = -1;
enemyScript[ENEMYSTATE.HURT] = -1;
enemyScript[ENEMYSTATE.DIE] = -1;
enemyScript[ENEMYSTATE.WAIT] = -1;

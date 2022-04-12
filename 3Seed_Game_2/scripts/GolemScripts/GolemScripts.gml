// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GolemAttack() 
{
	//How fast to move
	var _spd = enemySpeed;

	//Don't move while still getting ready to jump
	if (image_index < 2) _spd = 0;

	//Freeze animation while in mid-air, and also after landing finishes
	if (floor(image_index) == 3) || (floor(image_index) == 5) image_speed = 0;

	//How far we have to jump
	var _distanceToGo = point_distance(x,y,xTo,yTo);

	//Begin landing end of the animation once we're nearly done
	if (_distanceToGo < 4) && (image_index < 5) image_speed = 1;

	//Move
	if (_distanceToGo > _spd)
	{
		dir = point_direction(x,y,xTo,yTo);
		hsp = lengthdir_x(_spd,dir);
		vsp = lengthdir_y(_spd,dir);
		if (hsp != 0) image_xscale = sign(hsp);
	
		//Commit to move, and stop moving if we hit a wall
		if (EnemyTileCollision() == true)
		{
			xTo = x;
			yTo = y;
		}
	}
	else
	{
		x = xTo;
		y = yTo;	
		if (floor(image_index) == 5)
		{
			stateTarget = ENEMYSTATE.CHASE;
			stateWaitDuration = 15;
			state = ENEMYSTATE.WAIT;
		}
	}


}

function GolemChase() 
{
	sprite_index = sprMove;

	if (instance_exists(target))
	{
		xTo = target.x;
		yTo = target.y;
	
		var _distanceToGo = point_distance(x,y,xTo,yTo);
		image_speed = 1.0;
		dir = point_direction(x,y,xTo,yTo);
		if (_distanceToGo > enemySpeed)
		{
			hsp = lengthdir_x(enemySpeed,dir);
			vsp = lengthdir_y(enemySpeed,dir);
		}
		else
		{
			hsp = lengthdir_x(_distanceToGo,dir);
			vsp = lengthdir_y(_distanceToGo,dir);		
		}
		if (hsp != 0) image_xscale = sign(hsp);
		//Collide & move
		EnemyTileCollision();
	
	}

	//Check if close enough to launch an attack
	if (instance_exists(target)) && (point_distance(x,y,target.x,target.y) <= enemyAtkDistance)
	{
		state = ENEMYSTATE.ATTACK;
		sprite_index = sprMAttack;
		image_index = 0;
		image_speed = 1.0;
		xTo += lengthdir_x(8,dir);
		yTo += lengthdir_y(8,dir);
	}



}

function GolemWander() 
{
	sprite_index = sprMove;

	//At destination or given up?
	if ((x == xTo) && (y == yTo)) || (timePassed > enemyWanderDistance / enemySpeed) 
	{
		hsp = 0;
		vsp = 0;
		//End move animation
		if (image_index < 1)
		{
			image_speed = 0.0;
			image_index = 0;
		}
	
		//Set new target destination
		if (++wait >= waitDuration)
		{
			wait = 0;	
			timePassed = 0;
			dir = point_direction(x,y,xstart,ystart) + irandom_range(-45,45)
			xTo = x + lengthdir_x(enemyWanderDistance,dir)
			yTo = y + lengthdir_y(enemyWanderDistance,dir)
		}
	}
	else //move towards destination
	{
		timePassed++;
		var _distanceToGo = point_distance(x,y,xTo,yTo);
		var _speedThisFrame = enemySpeed;
		if (_distanceToGo < enemySpeed) _speedThisFrame = _distanceToGo;
		image_speed = 1.0;
		dir = point_direction(x,y,xTo,yTo);
		hsp = lengthdir_x(_speedThisFrame,dir);
		vsp = lengthdir_y(_speedThisFrame,dir);
		if (hsp != 0) image_xscale = sign(hsp);
		
		//Collide & move
		EnemyTileCollision();
	}

	//Check for aggro
	if (++aggroCheck >= aggroCheckDuration)
	{
		aggroCheck = 0;
		if (instance_exists(obj_player)) && (point_distance(x,y,obj_player.x,obj_player.y) <= enemyChaseDistance)
		{
			state = ENEMYSTATE.CHASE;
			target = obj_player;
		}
	}


}

function GolemHurt() 
{
	sprite_index = sprHurt;
	var _distanceToGo = point_distance(x,y,xTo,yTo);
	if (_distanceToGo > enemySpeed)
	{
		image_speed = 1.0;
		dir = point_direction(x,y,xTo,yTo);
		hsp = lengthdir_x(enemySpeed,dir);
		vsp = lengthdir_y(enemySpeed,dir);
		if (hsp != 0) image_xscale = -sign(hsp);
		
		//Collide & move, if collision then stop knockback
		if (EnemyTileCollision()) 
		{
			xTo = x; 
			yTo = y;
		}
	}
	else
	{
		x = xTo;
		y = yTo;	
		if (statePrevious != ENEMYSTATE.ATTACK)	state = statePrevious; else state = ENEMYSTATE.CHASE;
	
	}
}
	
function GolemDie() 
{
	sprite_index = sprDeath;
	image_speed = 1.0;
	var _distanceToGo = point_distance(x,y,xTo,yTo);
	if (_distanceToGo > enemySpeed)
	{
		dir = point_direction(x,y,xTo,yTo);
		hsp = lengthdir_x(enemySpeed,dir);
		vsp = lengthdir_y(enemySpeed,dir);
		if (hsp != 0) image_xscale = -sign(hsp);
		
		//Collide & move
		EnemyTileCollision();
	}
	else
	{
		x = xTo;
		y = yTo;	
	}

	if (image_index + (sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps)) >= image_number)
	{
		instance_destroy();	
	}
}

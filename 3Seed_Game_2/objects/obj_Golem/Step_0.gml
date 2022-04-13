/// @description Insert description here

if(!global.pause)
{
	if(enemyScript[state] != -1) script_execute(enemyScript[state]);
	depth = -bbox_bottom
}

if(instance_exists(obj_player)) && (point_distance(x,y,obj_player.x,obj_player.y) <= enemyChaseDistance*1.5) && (state == ENEMYSTATE.IDLE)
{
	image_speed = 1;
	if(image_index+image_speed >= image_number) state = ENEMYSTATE.WANDER;
}

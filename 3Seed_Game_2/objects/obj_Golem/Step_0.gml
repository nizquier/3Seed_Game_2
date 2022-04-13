/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(instance_exists(obj_player)) && (point_distance(x,y,obj_player.x,obj_player.y) <= enemyChaseDistance*1.5) && (state == ENEMYSTATE.IDLE)
{
	image_speed = 1;
	if(image_index+image_speed >= image_number) state = ENEMYSTATE.WANDER;
}

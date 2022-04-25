/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(instance_nearest(x, y, obj_block) != noone) 
{
	instance_create_layer(x,y, "Instances", obj_trophy1)
	instance_create_layer(x+10,y, "Instances", obj_extraLife)
} else {
	instance_create_layer(obj_player.x + 5, obj_player.y, "Instances", obj_trophy1)
	instance_create_layer(obj_player.x + 10, obj_player.y, "Instances", obj_extraLife)
}

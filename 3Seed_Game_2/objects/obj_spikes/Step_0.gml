/// @description Insert description here
// You can write your code in this editor

if(distance_to_object(obj_player) <= 20)
{
	image_speed = 1;/*
	if(image_index > 0)
	{
		instance_place(x, y, obj_player)
		{
			HurtPlayer(point_direction(x,y,obj_player.x,obj_player.y), 0, 0.5);
		}
	}*/
	if(floor(image_index) == image_number - 1)
	{
		image_index = 0;
		image_speed = 0;
	}
}

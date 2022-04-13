/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_player)){
	vspeed = atkSpeed;
	hspeed = atkSpeed;
	var ex = obj_player.x
	var ey = obj_player.y
	direction = point_direction(x, y, ex, ey)
	
	hit_dir = (round(point_direction(x, y, ex, ey)/90) * 90) % 360;
	switch(hit_dir) {
	case 90:
		image_angle = 180
		break;
	case 180:
		image_angle = 270
		break;
	case 270:
		image_angle = 0
		break;
	case 0:
		image_angle = 90
		break;
	}
} else instance_destroy();


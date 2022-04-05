/// @description Insert description here
// You can write your code in this editor

switch(image_angle) {
	case 0:
		y += atkSpeed
		break;
	case 90:
		x += atkSpeed
		break;
	case 180:
		y -= atkSpeed
		break;
	case 270:
		x -= atkSpeed
		break;
}
/*
if (image_speed > 0)
{
    if (image_index >= image_number) instance_destroy();
}*/
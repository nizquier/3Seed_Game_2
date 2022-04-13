/// @description Insert description here
// You can write your code in this editor

switch(image_angle) {
	case 0:
		y += atkSpeed * obj_heroPyro.atkSpdMultiplier
		break;
	case 90:
		x += atkSpeed * obj_heroPyro.atkSpdMultiplier
		break;
	case 180:
		y -= atkSpeed * obj_heroPyro.atkSpdMultiplier
		break;
	case 270:
		x -= atkSpeed * obj_heroPyro.atkSpdMultiplier
		break;
}
/*
if (image_speed > 0)
{
    if (image_index >= image_number) instance_destroy();
}*/
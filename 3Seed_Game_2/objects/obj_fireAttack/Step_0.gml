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

if (image_speed > 0)
{
    if (image_index >= image_number) instance_destroy();
}

/*
key_left = keyboard_check(ord("A"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_right = keyboard_check(ord("D"));

switch(global.playerFace) {
	case RIGHT:
		x += 5
		break;
	case UP:
		y -= 5
		break;
	case LEFT:
		x -= 5
		break;
	case DOWN:
		x -= 5
		break;
}

if(key_left) x -= 5
else if(key_right) x += 5
else if(key_up) y -= 5
else if(key_down) y += 5
*/ //Will use this code later, maybe
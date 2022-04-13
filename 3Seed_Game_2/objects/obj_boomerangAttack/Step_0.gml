/// @description Insert description here
// You can write your code in this editor

if(canControl) {
	key_left = keyboard_check(ord("A"));
	key_up = keyboard_check(ord("W"));
	key_down = keyboard_check(ord("S"));
	key_right = keyboard_check(ord("D"));

	if(key_left || key_up || key_down || key_right) {
		if(key_left) x -= atkSpeed
		else if(key_right) x += atkSpeed
		else if(key_up) y -= atkSpeed
		else if(key_down) y += atkSpeed
	} else {
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
	}
} else { //Returns the boomerang to the Dendro hero
	if(instance_exists(obj_heroDendro)){
		vspeed = atkSpeed * 2 * obj_heroPyro.atkSpdMultiplier;
		hspeed = atkSpeed * 2 * obj_heroPyro.atkSpdMultiplier;
		var ex = obj_heroDendro.x
		var ey = obj_heroDendro.y
		direction = point_direction(x, y, ex, ey)
		if(instance_place(x, y, obj_heroDendro) != noone) instance_destroy()
	} else instance_destroy();
}
/// @description Insert description here
// You can write your code in this editor

if(CurrentHero.Pyro == global.currHero) {
	//heroDirection = obj_heroPyro.direction
	//image_angle = point_direction(x, y, mouse_x, mouse_y);
	draw_self();
	switch(global.playerFace) {
	case RIGHT:
		image_angle = 90
		break;
	case UP:
		image_angle = 180
		break;
	case LEFT:
		image_angle = 270
		break;
	case DOWN:
		image_angle = 0
		break;
	}
} else instance_destroy();

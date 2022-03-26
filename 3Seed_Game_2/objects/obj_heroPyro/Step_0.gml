/// @description Insert description here
// You can write your code in this editor

key_right = keyboard_check(vk_right)
key_left = keyboard_check(vk_left)
key_up = keyboard_check(vk_up)
key_down = keyboard_check(vk_down)
key_space = keyboard_check(vk_space)
key_atk = keyboard_check(ord("E"))

xspd = (key_right - key_left) * move_speed;
yspd = (key_down - key_up) * move_speed;

if(key_right && !key_left){
	if(key_atk) sprite_index = spr_heroPyroAtk_right
	else if(key_space) sprite_index = spr_heroPyroGrd_right
	else sprite_index = spr_heroPyro_right
}else if(key_left && !key_right){
	if(key_atk) sprite_index = spr_heroPyroAtk_left
	else if(key_space) sprite_index = spr_heroPyroGrd_left
	else sprite_index = spr_heroPyro_left
}else if(key_up && !key_down){
	if(key_atk) sprite_index = spr_heroPyroAtk_up
	else if(key_space) sprite_index = spr_heroPyroGrd_up
	else sprite_index = spr_heroPyro_up
}else if(key_down && !key_up){
	if(key_atk) sprite_index = spr_heroPyroAtk_down
	else if(key_space) sprite_index = spr_heroPyroGrd_down
	else sprite_index = spr_heroPyro_down
}

//animate player
if(xspd == 0 and yspd == 0) {
	image_index = 0;
}

x += xspd;
y +=yspd;
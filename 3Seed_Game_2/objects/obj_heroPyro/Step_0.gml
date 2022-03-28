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

//animate player
if(xspd == 0 and yspd == 0) {
	image_index = 0;
}

x += xspd;
y +=yspd;

//set sprite
mask_index = sprite[DOWN]
if yspd == 0 {
	if xspd > 0 face = RIGHT;
	if xspd < 0 face = LEFT;
}
if xspd > 0 && face == LEFT face = RIGHT;
if xspd < 0 && face == RIGHT face = LEFT;
if xspd == 0 {
	if yspd > 0 face = DOWN;
	if yspd < 0 face = UP;
}
if yspd > 0 && face == UP face = DOWN;
if yspd < 0 && face == DOWN face = UP;
//sprite_index = sprite[face];
if(key_atk) sprite_index = atkSprite[face]
else if(key_space) sprite_index = defSprite[face]
else sprite_index = sprite[face]

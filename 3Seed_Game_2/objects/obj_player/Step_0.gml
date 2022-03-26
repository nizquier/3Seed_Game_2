/// @description Insert description here
// You can write your code in this editor

key_right = keyboard_check(vk_right)
key_left = keyboard_check(vk_left)
key_up = keyboard_check(vk_up)
key_down = keyboard_check(vk_down)

xspd = (key_right - key_left) * move_speed;
yspd = (key_down - key_up) * move_speed;

if(key_right){
	image_xscale = 1;
}else if(key_left){
	image_xscale = -1;
}

//animate player
if(xspd == 0 and yspd == 0) {
	image_index = 0;
}

x += xspd;
y +=yspd;
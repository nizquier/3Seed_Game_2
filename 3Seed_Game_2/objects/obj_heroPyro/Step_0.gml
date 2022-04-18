/// @description Insert description here
// You can write your code in this editor

x = clamp(x, sprite_width/2, room_width-sprite_width/2)
y = clamp(y, sprite_height/2, room_height-sprite_height/2)

sprite_collision_mask(sprAtkDOWN, true, 1, 0, 0, 0, 0, 0, 0);
global.playerBlocking = false

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

x += xspd * charSPD;
y +=yspd * charSPD;

//set sprite
mask_index = sprite[DOWN]
if yspd == 0 {
	if xspd > 0 {face = RIGHT};
	if xspd < 0 {face = LEFT};
}
if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};
if xspd == 0 {
	if yspd > 0 {face = DOWN};
	if yspd < 0 {face = UP};
}
if yspd > 0 && face == UP {face = DOWN};
if yspd < 0 && face == DOWN {face = UP};
if(key_atk) {
	sprite_index = atkSprite[face]
	global.playerBlocking = false
}
else if(key_space) {
	sprite_index = defSprite[face]
	global.playerBlocking = true
}
else {
	sprite_index = sprite[face]
	global.playerBlocking = false
}
global.playerFace = face;
frameSPD = game_get_speed(gamespeed_fps)

if canEAttack {
	if keyboard_check(ord("E")) {
		canEAttack = false;
		alarm[0] = 30;
		if(objEATTACK == obj_waterAttack){
			for(i = 0; i <= 4; i++) {
				switch(frameSPD * i) {
				case 60:
					global.bubbleFace = RIGHT
					break;
				case 120:
					global.bubbleFace = UP
					break;
				case 180:
					global.bubbleFace = LEFT
					break;
				default:
					global.bubbleFace = DOWN
					break;
				}
				instance_create_layer(x, y, "Instances", objEATTACK);
			}
		}else instance_create_layer(x, y, "Instances", objEATTACK);
	}
}

if (!global.pause) 
{
	invulnerable = max(invulnerable-1,0);
	flash = max(flash-0.05,0);
}

//collisions

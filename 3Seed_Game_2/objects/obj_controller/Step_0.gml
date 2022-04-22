/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_heroPyro)) {
	if(CurrentHero.Cryo == global.currHero) instance_deactivate_object(obj_shoreBlock)
	else instance_activate_object(obj_shoreBlock)
}

if(layer_exists(layer_get_id("Permanent_BlocksINV")) || layer_exists(layer_get_id("CollisionTiles")))
{
	layer_set_visible(layer_get_id("Permanent_BlocksINV"), false)
	layer_set_visible(layer_get_id("CollisionTiles"), false)
}

global.debuggingHero = false

//End screen
if(!instance_exists(obj_Enemy) && room != FirstRoom && room != Map)
{
	room_goto(MissionSuccessRoom)
}

if(lives <= 0) 
{
	room_goto(GameOverRoom)
	audio_play_sound(gameOver, 10, false)
}



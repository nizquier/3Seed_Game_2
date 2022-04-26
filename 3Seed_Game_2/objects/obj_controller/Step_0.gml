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
if(room == Map && global.trophy1 == true && global.trophy3 == true && global.trophy3 == true)
{
	room_goto(MissionSuccessRoom)
}

if(lives <= 0) 
{
	room_goto(GameOverRoom)
	audio_play_sound(gameOver, 10, false)
}

if(keyboard_check_pressed(ord("H"))){
	//global.debuggingHero = true
	switch(global.currHero) {
	case CurrentHero.Pyro: //This one is longer because Pyro is the parent of the rest
		tempX = obj_heroPyro.x
		tempY = obj_heroPyro.y
		instance_destroy(obj_heroPyro)
		instance_create_layer(tempX, tempY, "Instances", obj_heroCryo)
		break;
	case CurrentHero.Cryo:
		instance_create_layer(obj_heroCryo.x, obj_heroCryo.y, "Instances", obj_heroDendro)
		instance_destroy(obj_heroCryo)
		break;
	case CurrentHero.Dendro:
		instance_create_layer(obj_heroDendro.x, obj_heroDendro.y, "Instances", obj_heroHydro)
		instance_destroy(obj_heroDendro)
		break;
	case CurrentHero.Hydro:
		instance_create_layer(obj_heroHydro.x, obj_heroHydro.y, "Instances", obj_heroPyro)
		instance_destroy(obj_heroHydro)
		break;
	}
}


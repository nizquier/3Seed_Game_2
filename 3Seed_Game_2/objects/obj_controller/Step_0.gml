/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_player)) {
	if(CurrentHero.Cryo == global.currHero) instance_deactivate_object(obj_shoreBlock)
	else instance_activate_object(obj_shoreBlock)
}
/// @description Insert description here
// You can write your code in this editor

global.playerHPMax = 10;
global.playerHP = 10;
global.game_over = false

global.game_over = false;
lives = 3
global.debuggingHero = false
global.trophy1 = false
global.trophy2 = false
global.trophy3 = false

enum CurrentHero {
	Pyro,
	Cryo,
	Hydro,
	Dendro
}

if(!audio_is_playing(snd_mainMenu)) audio_play_sound(snd_mainMenu, 10, true)

if(instance_exists(obj_controller)) instance_destroy();

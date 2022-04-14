/// @description Insert description here
// You can write your code in this editor

global.game_over = false;
lives = 3

enum CurrentHero {
	Pyro,
	Cryo,
	Hydro,
	Dendro
}

audio_play_sound(snd_mainMenu, 10, true)

//Here we can add CHEAT codes as well as any other ongoing PERSISTENT code
//if ALT key plus n key then...
if(keyboard_check_pressed(ord("R"))) room_restart();
if(keyboard_check_pressed(ord("N"))) room_goto_next();
if(keyboard_check_pressed(ord("H"))){
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
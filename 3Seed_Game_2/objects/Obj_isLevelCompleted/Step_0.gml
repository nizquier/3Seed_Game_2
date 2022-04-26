/// @description Insert description here
// You can write your code in this editor

if(Level_Number != 0 and instance_exists(Obj_cursor)) {
	
	switch Level_Number {
	
		case 1:
			if(global.trophy3) {
				with(Levels[0]){
					sprite_index = spr_Map_green;
				}
			}
			break;
		case 2:
			if(global.trophy2) {
				with(Levels[1]){
					sprite_index = spr_Map_green;
				}
			}
			break;
		case 3:
			if(global.trophy1) {
				with(Levels[2]){
					sprite_index = spr_Map_green;
				}
			}
			break;
	
	}

}



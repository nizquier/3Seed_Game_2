// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function isFar(objP, objE){
	if(instance_exists(objP)) {
		if(objP.y < 767 && objE.y > 767) instance_destroy();
		else if(objP.y < 510 && objE.y > 510) instance_destroy();
		else if(objP.y < 205 && objE.y > 205) instance_destroy();
	}
}
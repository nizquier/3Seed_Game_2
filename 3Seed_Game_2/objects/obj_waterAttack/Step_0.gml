/// @description Insert description here
// You can write your code in this editor

if(obj_heroPyro.atkSpdMultiplier < 2)
{
	switch(image_angle) {
		case 0:
			y += atkSpeed
			break;
		case 90:
			x += atkSpeed
			break;
		case 180:
			y -= atkSpeed
			break;
		case 270:
			x -= atkSpeed
			break;
	}
}
else if(CurrentHero.Hydro == global.currHero && obj_heroPyro.atkSpdMultiplier > 1)
{	
	switch(image_angle)
	{
	case 90:
		x += atkSpeed
		y -= atkSpeed
		break;
	case 270:
		x -= atkSpeed
		y += atkSpeed
		break;
	}
	switch(image_angle)
	{
	case 180:
		y -= atkSpeed
		x -= atkSpeed
		break;
	case 0:
		y += atkSpeed
		x += atkSpeed
		break;
	}
}

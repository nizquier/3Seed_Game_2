/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_enter)){
	max_val = timeline_max_moment(timeline_index)
	if(timeline_position > max_val)
	{	
		timeline_running = false;
		hasTimelineStarted = false;
		timeline_position = 0
	}
	timeline_position++
	text_position = 0
	new_text = ""
}

//if(!instance_place(x , y, obj_player)){
//	timeline_running = false;
//	hasTimelineStarted = false;
//	timeline_position = 1;
//}

text_position += text_speed
new_text = string_copy(text, 1, text_position)


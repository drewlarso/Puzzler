/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y,obj_player)) {
	if (can_press) {
		can_press = false
		global.enabled = !global.enabled;
	}
} else {
	can_press = true
}

switch (can_press) {
	case false:
		image_index = 1
		break;
	case true:
		image_index = 0
		break;
}
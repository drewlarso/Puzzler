/// @description Insert description here
// You can write your code in this editor

try {
	room_goto_next();
} catch(_exception) {
	room_goto(0);
	show_debug_message(_exception);
}
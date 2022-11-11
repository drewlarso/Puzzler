/*
distance = min(500, point_distance(obj_player.x, obj_player.y, mouse_x, mouse_y)) / 5;
angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
if (distance > 22) {
	camera_set_view_target(view_camera[0], self);
	y = obj_player.y + lengthdir_y(distance - 22, angle);
	if (distance > 30) {
		x = obj_player.x + lengthdir_x(distance - 30, angle);
	}
} else {
	camera_set_view_target(view_camera[0], obj_player);
	//x = lerp(x, obj_player.x, .2);
}
show_debug_message(distance)
*/
/*
self.x = obj_player.x+((window_mouse_get_x()-(window_get_width()/2))/4)
self.y = obj_player.y+((window_mouse_get_y()-(window_get_height()/2))/4)
*/
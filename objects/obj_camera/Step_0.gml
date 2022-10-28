distance = min(500, point_distance(obj_player.x, obj_player.y, mouse_x, mouse_y)) / 5;
angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
x = obj_player.x + lengthdir_x(distance, angle);
y = obj_player.y + lengthdir_y(distance, angle);

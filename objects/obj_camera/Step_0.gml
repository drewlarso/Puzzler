/// @description Camera Movement
// You can write your code in this editor
self.x = obj_player.x+(((640-window_mouse_get_x())*-1)/abs((mouse_x-obj_player.x)/100))
self.y = obj_player.y+(((480-window_mouse_get_y())*-1)/abs((mouse_y-obj_player.y)/100))




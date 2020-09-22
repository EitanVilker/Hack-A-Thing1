/// @description Follow player

if (instance_exists(target)){
	// Center on player
	global.cam_X = target.x - (global.cam_width/2);
	global.cam_Y = target.y - (global.cam_height/2);
	
	// Clamp camera at edges edges are clear
	global.cam_X = clamp(global.cam_X, 0, room_width-global.cam_width);
	global.cam_Y = clamp(global.cam_Y, 0, room_height-global.cam_height);
}
camera_set_view_pos(view_camera[0], global.cam_X, global.cam_Y)
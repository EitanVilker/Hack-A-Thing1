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

// Have background layers move relative to player.
// The closer the multiplier is to 1, the closer it is to being static
// Using the layer name is worse for performance. Layer ID is better
layer_x("Parallax_0", global.cam_X * 0.9);
layer_y("Parallax_0", global.cam_Y * 0.9);

layer_x("Parallax_1", global.cam_X * 0.8);
layer_y("Parallax_1", global.cam_Y * 0.8);

layer_x("Parallax_2", global.cam_X * 0.7);
layer_y("Parallax_2", global.cam_Y * 0.7);

layer_x("Parallax_3", global.cam_X * 0.98);
layer_y("Parallax_3", global.cam_Y * 0.98);
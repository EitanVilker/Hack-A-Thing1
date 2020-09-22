/// @description Destroy bullets outside of camera

if (!point_in_rectangle(	x, y,
						global.cam_X,
						global.cam_Y,
						global.cam_X + global.cam_width,
						global.cam_Y + global.cam_height)
						){
	instance_destroy();
}
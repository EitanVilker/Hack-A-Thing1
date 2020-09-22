/// @function scr_spawn_off_camera(obj, num)
/// @param {obj} object to be spawned
/// @param {num} number of objects to spawn
function scr_spawn_off_camera(obj, num){
	var xx,yy;
	var pad;
	
	pad = 64;
	
	repeat(num) {
		xx = random_range(0, room_width);
		yy = random_range(0, room_height);
		
		while(point_in_rectangle(	xx, yy,
									global.cam_X - pad,
									global.cam_Y - pad,
									global.cam_X + global.cam_width + pad,
									global.cam_Y + global.cam_height + pad)
									){
			xx = random_range(0, room_width);
			yy = random_range(0, room_height);
		}
	
		instance_create_layer(xx, yy, "Instances", obj);
	}
}
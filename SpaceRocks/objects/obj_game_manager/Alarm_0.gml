/// @description Spawn asteroids
// Periodic asteroid spawning
// 50-50 for whether we spawn along sides or along top/bottom

if (room != rm_game) {
	exit; // Exiting terminates. Keeps new asteroids from spawning
}

scr_spawn_off_camera(obj_asteroid, 1);

alarm[0] = room_speed * 1; // Reset the alarm
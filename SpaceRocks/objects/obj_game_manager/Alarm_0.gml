/// @description Spawn asteroids
// Periodic asteroid spawning
// 50-50 for whether we spawn along sides or along top/bottom

if (room != rm_game) {
	exit; // Exiting terminates. Keeps new asteroids from spawning
}

if (choose(0, 1) == 0) {
	// Spawn along side
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
	
} else {
	// Spawn along top/bottom
	var yy = choose(0, room_width);
	var xx = irandom_range(0, room_height);
}

instance_create_layer(xx, yy, "Instances", obj_asteroid);

alarm[0] = room_speed * 4; // Reset the alarm
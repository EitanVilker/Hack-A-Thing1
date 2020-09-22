/// @description Ram player

image_index = HP - 1;

// Null check
if (!instance_exists(obj_ship)) { exit; }

// If player's within range
if (point_distance(x,y, obj_ship.x, obj_ship.y) < 250) {
	// Look @ player
	var new_angle = point_direction(x, y, obj_ship.x, obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle, new_angle); // Turns the shortest distance towards player
	image_angle = lerp(image_angle, new_angle, 0.1); // Turns gradually
	
	speed += 0.01; // Get faster as it chases player
	
	
} else {
	speed = lerp(speed, original_speed, 0.1);
}
/// @description Look for player

// Null check
if (!instance_exists(obj_ship)) { exit; }

// If player's within range
if (point_distance(x,y, obj_ship.x, obj_ship.y) < 250) {
	// Look @ player
	var new_angle = point_direction(x, y, obj_ship.x, obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle, new_angle); // Turns the shortest distance towards player
	image_angle = lerp(image_angle, new_angle, 0.1); // Turns gradually
	
	
	// Shoot
	bullet_counter++;
	if (bullet_counter >= 60) {
		scr_create_bullet(image_angle, 4, faction, id);
		bullet_counter = 0;
	}
	
} else {
	image_angle = lerp(image_alpha, direction, 0.1); // Turn back to initial direction
}
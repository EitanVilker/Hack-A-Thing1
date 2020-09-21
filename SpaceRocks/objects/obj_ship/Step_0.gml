// Turn Left
if (keyboard_check(vk_left)) {
	image_angle += ship_turn_speed;
}

// Turn Right
if (keyboard_check(vk_right)) {
	image_angle -= ship_turn_speed;
}

// Move forward
if (keyboard_check(vk_up)) {
	motion_add(image_angle, ship_fly_speed); // Accounts for momentum
}

// Shoot bullet
// Activated once per press of the spacebar
if (keyboard_check_pressed(vk_space)) {
	// Every sprite has x,y instance variables
	// Create bullet in the instances layer
	// Returns ID of the created object
	// var makes inst a local variable, discarded at end of script 
	var inst =  instance_create_layer(x, y, "Instances", obj_bullet);
	inst.direction = image_angle;
}

// Wrap around at edges
move_wrap(true, true, sprite_width/2); // Every sprite has sprite_width instance variable
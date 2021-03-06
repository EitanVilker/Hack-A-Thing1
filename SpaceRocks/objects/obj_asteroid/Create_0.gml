/// @description Asteroid initialization

// Runs inhereted Create event
event_inherited();

sprite_index = choose(
	spr_asteroid_large,
	spr_asteroid_medium,
	spr_asteroid_small
	);

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);
speed = asteroid_fly_speed;

/// @description Asteroid behavior

// Wrap around at edges
move_wrap(true, true, sprite_width/2);

// Rotate
image_angle += asteroid_turn_speed;
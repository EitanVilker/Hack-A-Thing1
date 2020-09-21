// Manages the events ocurring within the game

show_debug_message("LIVES: "+string(lives));
show_debug_message("SCORE: "+string(score));

// score & lives are built-in global variables in gamemaker
// Score is initialized to 0. Lives are initialized to -1.
if (lives == -1) {
	lives = 3;
}

draw_set_font(fnt_text);

// By default, Gamemaker sets a random seed for random generation.
// The game follows it each time unless we run randomize()
randomize();
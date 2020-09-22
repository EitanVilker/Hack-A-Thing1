/// @description Game setup

// score & lives are built-in global variables in gamemaker
// Score is initialized to 0. Lives are initialized to -1.
if (lives == -1) {
	lives = 3;
}
score = 0;

draw_set_font(fnt_text);

// By default, Gamemaker sets a random seed for random generation.
// The game follows it each time unless we run randomize()
randomize();

// Enumerators are global, contain the variables within
enum factions {
	neutral,
	ally,
	enemy
}
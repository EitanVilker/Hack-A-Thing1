/// @description Debris fade

// Have the debris fade as it flies. Once it's transparent, it destroys itself.
image_alpha -= 0.01;
if (image_alpha <= 0) {
	instance_destroy();
}
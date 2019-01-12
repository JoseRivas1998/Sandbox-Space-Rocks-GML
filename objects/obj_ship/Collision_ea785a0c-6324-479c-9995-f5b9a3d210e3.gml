audio_play_sound(snd_die, 1, false);
instance_destroy();
lives -= 1;
repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris);
}
with(obj_game) {
	alarm[1] = 1 * room_speed;
}
if (audio_counter <= 0)
{
	audio_play_sound(snd_footstep, 1, 0);
	audio_counter = 10;
}
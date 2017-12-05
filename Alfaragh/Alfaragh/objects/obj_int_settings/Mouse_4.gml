/// @description Initializes game when pressed
if ev_mouse_enter
{
	audio_play_sound(snd_button_click,1,0);
	room_goto(2);
}
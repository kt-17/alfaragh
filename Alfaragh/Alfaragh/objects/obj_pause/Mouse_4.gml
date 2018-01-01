if room == 2
{
	room_goto_previous();
}
else
{
	room_goto(2);
}
if room == 1
{
	show_message("Unlimited health activated.")
	global.uhealth = 1;
}
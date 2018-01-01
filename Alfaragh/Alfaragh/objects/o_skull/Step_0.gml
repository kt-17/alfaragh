if (place_meeting(x,y,o_player_platform)) && global.fight == 1
{
	shealth -= .1
}

if shealth <= 0
{
	instance_destroy();
	global.level1enemycount -= 1;
	global.level2enemycount -= 1;
}
global.player_ypos = 0;
global.player_xpos = 0;
global.set_vol = 0;
global.slide_pos = 455;
global.vol_bar = 1;
global.volume = .5;
global.attack_damage = 5;
global.slide2_pos = 455;
global.diff_bar = 1;
global.fight = 0;
global.boss_health = 300;
global.level1won = false;
global.level2won = true;
global.levelbosswon = false;
global.uhealth = 0;
global.level1enemycount = 4;
global.level2enemycount = 12;
global.player_health = 62-(3*global.attack_damage);
enum spdr
{
	patrol,
	idle,
	chase
}


room_goto(1);
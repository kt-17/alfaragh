audio_set_master_gain(0, global.volume);
global.player_health = 62;
global.level2enemycount = 8;
instance_deactivate_object(o_gameover);
instance_deactivate_object(o_goal_level_2);
show_message("Beware red platforms! They can hurt!")
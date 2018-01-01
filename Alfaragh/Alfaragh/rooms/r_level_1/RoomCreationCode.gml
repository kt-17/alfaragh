audio_set_master_gain(0, global.volume);
global.player_health = 62;
global.level1enemycount = 4;
instance_deactivate_object(o_gameover);
instance_deactivate_object(o_goal_level_1);
show_message("Use A to move left, and D to move right. Use space to jump, and press again to jump a second time. Pick up Pooh Bears to fill health. Use the left mouse button to fight, and the middle mouse button to block all damage. Whatever you do, though, never press H! To beat the level, clear all enemies and walk through the goal!")
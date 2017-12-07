if distance_to_object(o_player_platform)<=20
{
      if (collision_line(x,y,o_player_platform, o_player_platform.x, o_player_platform.y, true, true) = noone) {
           direction = point_direction(x,y,-o_player_platform.x,o_player_platform.y);
           speed = 4;
    }
}

switch (state)
{
    case spdr.idle:
    {
        hspd = 0;
        vspd = (min(7,vspd+0.05));
        if (distance_to_object(o_player_platform) < 150) state = spdr.chase;
    }
    break;
    case spdr.chase:
    {
        dir = sign(o_player_platform.x - x);
        hspd = dir * 3;
        vspd = (min(7,vspd+0.05));
        if (distance_to_object(o_player_platform) > 300) state = spdr.idle;
    }
    break;
}

//Horizontal Collision
if (place_meeting(round(x+hspd),round(y),o_solid))
{
    while(!place_meeting(round(x+sign(hspd)),round(y),o_solid)) x += sign(hspd);
    hspd = 0;
}
x += hspd;

//Vertical Collision
if (place_meeting(round(x),round(y+vspd),o_solid))
{
    while(!place_meeting(round(x),round(y+sign(vspd)),o_solid)) y += sign(vspd);
    vspd = 0;
}
y += vspd;

if (place_meeting(x,y,o_player_platform)) && global.fight = 1
{
	sphealth -= .1
}

if sphealth <= 0 && death == 0
{
	sprite_index = s_spider_die;
	image_speed = 1;
	death = 1;
}
if death == 1
{
	instance_destroy()
}
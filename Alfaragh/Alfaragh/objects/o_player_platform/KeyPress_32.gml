jump = 0;
while jump <= 2
{
	vspd = -10;
	jump += 1;
}
if place_meeting(x,y+1,o_solid)
{
	jump = 0;
}
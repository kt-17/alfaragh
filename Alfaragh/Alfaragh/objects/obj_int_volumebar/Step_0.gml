/// @description Insert description here
// You can write your code in this editor

if (image_index < 1) or (image_index > 62)
	{
		count = 0;
	}
else
	{
		count = 1/1.5;
	}
	
	if (keyboard_check(vk_right) = 1)
		{
			image_index += count;
			if(image_index >= 62)
			{
				image_index = 62;
			}
		}
	
	if (keyboard_check(vk_left) = 1)
		{
		image_index -= count;
			if(image_index <= 1)
			{
				image_index = 1;
			}
		}
	
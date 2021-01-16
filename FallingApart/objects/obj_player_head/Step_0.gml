/// @desc Follow player
x = obj_player.x
y = obj_player.y-20;
image_xscale = obj_player.image_xscale;

//headbutting
if (obj_player.headon = true)
{
	if (headbutt)
	{
		if(headcooldown = false)
		{
			var i;
			for (i = 0; i < 5; i += 1)
			{
				x -= image_xscale*10;
				i+=1;
			}
	
			if(alarm[0]<=0)
			{
				alarm[0] = 10;
			}
		}
	}
}
else
{
	sprite_index = spr_limbless;
}
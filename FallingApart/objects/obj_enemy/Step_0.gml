/// @desc 

//Movement Math
move = right+left;
hsp = move*sped;
//dirrection
if (move != 0)
{
	image_xscale = -move;
}
//ai
if(instance_exists(obj_player))
{
	if(distance_to_object(obj_player)< 600)
	{
		if(obj_player.x<x){left = -1; right = 0}
		else if(obj_player.x>x){right = 1; left = 0}
	}
	if(distance_to_object(obj_player)< 80)
	{
		left = 0;
		right = 0;
		//attack state code
	}
	/*else if (distance_to_object(obj_player) > 400 && shootarm == true)
	{
		//fire limb, then go into chase mode.
	}*/
}
//MoveState
if(estate == enemy_state.free)
{
	//Jumping
	if (!place_free(x,y+17) && up)
		{
			vsp = -sped;
		}
	//Moving Left & right
	if (!place_free(x+hsp,y))
	{
		while (place_free(x+sign(hsp),y))
		{
			x += sign(hsp);
		}
		hsp = 0
	}

	x += hsp;
}
//Gravity and Falling
if (vsp < 10) 
{
	vsp += grav;
}
if (!place_free(x,y+vsp))
	{
		while (place_free(x,y+sign(vsp)))
		{
			y += sign(vsp);
		}
		vsp = 0
	}
y += vsp;
//knockback
if (estate == enemy_state.stun)
{
	hsp = push;
	push = lerp(push, 0, 0.1);
	
	if (!place_free(x+hsp,y))
	{
		while (place_free(x+sign(hsp),y))
		{
			x += sign(hsp);
		}
		hsp = 0
	}
	x += hsp;
		
}
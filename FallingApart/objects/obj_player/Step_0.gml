/// @desc Control Player
//Inputs
left = keyboard_check(vk_left) || keyboard_check(ord("A"));
right = keyboard_check(vk_right)|| keyboard_check(ord("D"));
attack = keyboard_check(ord("Q"));
up = keyboard_check_pressed(vk_space)|| keyboard_check(ord("W")) || keyboard_check_pressed(vk_up);
//Movement
move = right-left;

hsp = move*sped;

//Direction
if (move != 0)
{
	image_xscale = -move;
}

//MoveState
if(pstate == player_state.free)
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
//Dying
if(hp <= 0)
{
	//put more stuff here
	instance_destroy();
}
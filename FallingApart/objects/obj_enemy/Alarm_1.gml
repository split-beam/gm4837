/// @desc Punch
if(instance_exists(obj_enemy_arm) && ecool == false)
			{
				obj_enemy_arm.sprite_index = spr_enemy_limb_at
				punch = true;
				ecool = true;
				obj_enemy_arm.alarm[0] = 20;	
			}
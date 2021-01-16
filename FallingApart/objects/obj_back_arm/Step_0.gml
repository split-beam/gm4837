/// @desc follow player
x = obj_player.x+16;
y = obj_player.y-4;
image_xscale = obj_player.image_xscale;
if(obj_player.shootarm == true)
{
	if(mouse_check_button_released(mb_right))
	{
		sprite_index = spr_limbless;
		proj = instance_create_layer(x,y,"backlimb",obj_limbless);
		proj.direction = direction
		proj.image_angle = direction
		proj.image_xscale = image_xscale;
		if(image_xscale < 1) {proj.speed = 10}
		else if(image_xscale > 1) {proj.speed = -10}
		instance_create_layer(x,y,"backlimb",obj_limbless);
		instance_create_layer(x,y,"mainarm",obj_projectile);
		obj_player.shootarm = false;
	}
}


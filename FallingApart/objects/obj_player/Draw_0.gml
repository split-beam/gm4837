/// @description Insert description here
// You can write your code in this editor
//color
var col1 = make_color_hsv(hue, sat, val)
var col1t = make_color_hsv(hue-128, sat, val)
//shading!
var col2 = make_color_hsv(hue-15, sat+12, val-30)
//walk!
var rot1 = sin(obj_animator.sin_value)*40

//back arm
if(shootarm = true)
{
	draw_sprite_ext(spr_player_limb,0,obj_back_arm.x,obj_back_arm.y,image_xscale,1,0,col2,1);
}
else if(instance_exists(obj_projectile))
{
	draw_sprite_ext(spr_player_limb,0,obj_projectile.x,obj_projectile.y,obj_projectile.image_xscale,1,0,col2,1);
}
//Back leg
if(move != 0)
{
	draw_sprite_ext(spr_player_leg,0,x+4,y+20,image_xscale,1,rot1,col2,1);
}
else
{
	draw_sprite_ext(spr_player_leg,0,x+4,y+20,image_xscale,1,0,col2,1);
}
//torso
draw_sprite_ext(spr_player_torso,0,x,y,image_xscale,1,0,col1t,1);
//leg
if(move != 0)
{
	draw_sprite_ext(spr_player_leg,0,x-4,y+20,image_xscale,1,-rot1,col2,1);
}
else
{
	draw_sprite_ext(spr_player_leg,0,x-4,y+20,image_xscale,1,0,col2,1);
}
//head
draw_sprite_ext(spr_player_head,0,obj_player_head.x,obj_player_head.y+(rot1/20),image_xscale,1,0,col1,1);
//arm
if(punch == false)
{
	draw_sprite_ext(spr_player_limb,0,obj_player_arm.x,obj_player_arm.y,image_xscale,1,0,col2,1);
}
else if(punch == true)
{
	draw_sprite_ext(spr_player_limb_at,0,obj_player_arm.x,obj_player_arm.y,image_xscale,1,0,col2,1);
}

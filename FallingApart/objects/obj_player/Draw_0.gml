/// @description Insert description here
// You can write your code in this editor
//color
var col1 = make_color_hsv(hue, sat, val)
var col1t = make_color_hsv(hue-128, sat, val)
//shading!
var col2 = make_color_hsv(hue-15, sat+12, val-30)
//walk!
var rot1 = sin(obj_animator.sin_value)*40


//leg
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
//back leg
if(move != 0)
{
	draw_sprite_ext(spr_player_leg,0,x-4,y+20,image_xscale,1,-rot1,col2,1);
}
else
{
	draw_sprite_ext(spr_player_leg,0,x-4,y+20,image_xscale,1,0,col2,1);
}
//head
draw_sprite_ext(spr_player_head,0,x,y-20+(rot1/20),image_xscale,1,0,col1,1);
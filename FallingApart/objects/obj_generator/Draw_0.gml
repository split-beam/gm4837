/// @descr Random Gen

//rotation via animation obj, unsure if needed. Use this when pressing directional key
var rot1 = sin(obj_animator.sin_value)*40

//color
var col1 = make_color_hsv(hue, sat, val)
//shading!
var col2 = make_color_hsv(hue-15, sat+12, val-30)
//back leg
draw_sprite_ext(spr_player_leg,0,x-4,y+16,1,1,-rot1,col2,1);
//body col
var col3 = make_color_hsv(hue-128, sat, val)
//draw_sprite_ext(spr_player_uleg,0,x-4,y+34,1,1,0,image_blend,1);
draw_sprite_ext(spr_player_leg,0,x-4,y+16,1,1,rot1,col2,1);


draw_sprite_ext(spr_player_torso,0,x,y,1,1,0,col3,1);
draw_sprite_ext(spr_player_limb,0,x+12,y-2,1,1,0,col2,1);
draw_sprite_ext(spr_player_head,0,x+18,y-20+(rot1/20),1,1,0,col1,1);
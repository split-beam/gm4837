/// @desc Follow player
x = obj_player.x-4;
y = obj_player.y+16;
image_xscale = obj_player.image_xscale;

//animate
var rot1 = sin(obj_animator.sin_value)*40
image_angle += rot1;
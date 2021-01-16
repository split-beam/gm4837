/// @descr Set up variables
//health
maxhp = 3;
hp = maxhp;
//states
enum player_state
{
	free,
	attack,
	shoot,
	fall,
	stun
}
pstate = player_state.free;
//Movement
vsp = 0;
hsp = 0;
grav = 0.2;
sped = 5;
//spawn in body
instance_create_layer(x+18,y-20,"backlimb",obj_player_head);
instance_create_layer(x+12,y-2,"mainarm",obj_player_arm);
instance_create_layer(x,y,"backlimb",obj_back_arm);
//colors
randomize();
hue = irandom_range(0, 256);
sat = irandom_range(100,150);
val = irandom_range(120,160);
//combat
pcool = false;
punch = false;
//limbs
headon = true;
mainarm = true;
shootarm = true;

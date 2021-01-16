/// @descr Set up variables
//health
maxhp = 3;
hp = maxhp;
//states
enum player_state
{
	free,
	attack,
	block,
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
//colors
randomize();
hue = irandom_range(0, 256);
sat = irandom_range(100,150);
val = irandom_range(120,160);
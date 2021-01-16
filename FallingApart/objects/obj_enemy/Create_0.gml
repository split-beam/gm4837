/// @descr Set up variables
//health
maxhp = 3;
hp = maxhp;
//move ini
right = 0;
left = 0;
up = 0;
push = 0;
//states
enum enemy_state
{
	free,
	attack,
	shoot,
	fall,
	stun
}
estate = enemy_state.free;
//Movement (unsure if needed for now)
vsp = 0;
hsp = 0;
grav = 0.2;
sped = 5;
//spawn in body
instance_create_layer(x+18,y-20,"backlimb",obj_enemy_head);
instance_create_layer(x+12,y-2,"mainarm",obj_enemy_arm);
instance_create_layer(x,y,"backlimb",obj_enemy_back_arm);
//colors
randomize();
hue = irandom_range(0, 256);
sat = irandom_range(100,150);
val = irandom_range(120,160);
//combat
ecool = false;
punch = false;
//limbs
headon = true;
mainarm = true;
shootarm = true;
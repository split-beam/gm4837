/// @description Insert description here
// You can write your code in this editor
x = obj_enemy.x
y = obj_enemy.y-10;
image_xscale = obj_enemy.image_xscale;

if (place_meeting(x,y,obj_player_prnt) && obj_player.pstate != obj_player.player_state.stun && obj_enemy.punch == true)
{
		obj_player.push = sign(obj_player.x-x)*14;
		obj_player.pstate = obj_player.player_state.stun;
		//obj_enemy.sprite_index =spr_damaged;
		obj_player.alarm[0] = 60;
		//obj_player.hp -= 1;
}

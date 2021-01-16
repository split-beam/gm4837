/// @description Insert description here
// You can write your code in this editor
x = obj_player.x
y = obj_player.y-10;
image_xscale = obj_player.image_xscale;

if (place_meeting(x,y,obj_enemy) && obj_enemy.estate != obj_enemy.enemy_state.stun && obj_player.punch == true)
{
		obj_enemy.push = sign(obj_enemy.x-x)*14;
		obj_enemy.estate = obj_enemy.enemy_state.stun;
		//obj_enemy.sprite_index =spr_damaged;
		obj_enemy.alarm[0] = 60;
		obj_enemy.hp -= 1;
}



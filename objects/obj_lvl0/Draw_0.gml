/// @description Insert description here
// You can write your code in this editor

draw_self()

if obj_game.turn == 0
{
	if obj_game.level == 0
	{
		image_index = 1	
	}
	
	else if blue_quantity <= 0
	{
		image_index = 4;
	}
	
	else
	{
		image_index = 0
	}
}

else
{
	if obj_game.level == 0
	{
		image_index = 3 	
	}
	
	else if red_quantity <= 0
	{
		image_index = 4;
	}
	else
	{
		image_index = 2
	}	
}


if obj_game.turn == 0 && blue_quantity > 0
{
	draw_set_halign(fa_center)
	draw_text(x + 32,y + 45,"x" + string(blue_quantity))
}

if obj_game.turn == 1 && red_quantity > 0
{
	draw_set_halign(fa_center)
	draw_text(x + 32,y + 45,"x" + string(red_quantity))
}




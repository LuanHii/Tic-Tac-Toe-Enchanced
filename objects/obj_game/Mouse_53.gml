// Colocando um O
var gridx = mouse_x div 160;
var gridy = mouse_y div 160;

if grid[# gridx, gridy] == -1 && turn == 0 && obj_game.level != -1 && !game_pause{
	
	grid[# gridx, gridy] = 0;
	with(instance_create_layer(gridx * 160, gridy * 160,"Instances",obj_piece))
	{
		image_index = obj_game.level;
		
		if obj_game.level == 0
		{
			obj_lvl0.blue_quantity--;	
		}
		else if obj_game.level == 1
		{
			obj_lvl1.blue_quantity--;	
		}
		
		else if obj_game.level == 2
		{
			obj_lvl2.blue_quantity--;
		}
	}
	turn++;
	game_turn++;
	obj_game.level = -1;
} 

else if instance_position(mouse_x, mouse_y,obj_piece_2)  && turn == 0
{
	if grid[# gridx, gridy] == 1 && instance_position(mouse_x, mouse_y,obj_piece_2).lv < obj_game.level
{
	instance_destroy(instance_position(mouse_x, mouse_y,obj_piece_2))
	grid[# gridx, gridy] = 0;
	with(instance_create_layer(gridx * 160, gridy * 160,"Instances",obj_piece))
	{
		image_index = obj_game.level;
		
		if obj_game.level == 0
		{
			obj_lvl0.blue_quantity--;	
		}
		else if obj_game.level == 1
		{
			obj_lvl1.blue_quantity--;	
		}
		
		else if obj_game.level == 2
		{
			obj_lvl2.blue_quantity--;
		}
	}
	game_turn++;
	turn++;
	
	obj_game.level = -1;
	
	
}
}


if grid[# gridx, gridy] == -1 && turn == 1 &&  obj_game.level != -1 && !game_pause{
	
	
	grid[# gridx, gridy] = 1;
	with(instance_create_layer(gridx * 160, gridy * 160,"Instances",obj_piece_2))
	{
		image_index = obj_game.level;
		
		if obj_game.level == 0
		{
			obj_lvl0.red_quantity--;	
		}
		else if obj_game.level == 1
		{
			obj_lvl1.red_quantity--;	
		}
		
		else if obj_game.level == 2
		{
			obj_lvl2.red_quantity--;
		}
	}
	turn--;
	game_turn++;
	obj_game.level = -1;
	
}

else if instance_position(mouse_x, mouse_y,obj_piece) && turn == 1
{
	if grid[# gridx, gridy] == 0 && instance_position(mouse_x, mouse_y,obj_piece).lv < obj_game.level
{
	instance_destroy(instance_position(mouse_x, mouse_y,obj_piece))
	grid[# gridx, gridy] = 1;
	with(instance_create_layer(gridx * 160, gridy * 160,"Instances",obj_piece_2))
	{
		
		image_index = obj_game.level;
		
		
		
		if obj_game.level == 0
		{
			obj_lvl0.red_quantity--;	
		}
		else if obj_game.level == 1
		{
			obj_lvl1.red_quantity--;	
		}
		
		else if obj_game.level == 2
		{
			obj_lvl2.red_quantity--;
		}
	}
	turn--;
	game_turn++;
	obj_game.level = -1;
	
	
}
}


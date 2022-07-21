// Evento a cada frame

for (var row = 0; row<ds_grid_height(grid); row++)
{
	for (var col = 0; col<ds_grid_width(grid); col++)
		{
			
			// Coluna de O
			if (grid[# col , row] == 0) && (grid[# col + 1 , row] == 0) && (grid[# col + 2 , row] == 0)
			{
				owin = true
				game_pause = true
				
				
			}
			
			// Liha de O
			if (grid[# col , row] == 0) && (grid[# col  , row + 1] == 0) && (grid[# col  , row + 2] == 0)
			{
				owin = true
				game_pause = true
				
				
			}
			
			// Diagonal de O
			
			if (grid[# col, row] == 0) && (grid[# col + 1 , row + 1] == 0) && (grid[# col + 2 , row + 2] == 0)
			{
				owin = true
				game_pause = true
				
				
			}
			
			if (grid[# col, row + 2] == 0) && (grid[# col + 1 , row + 1] == 0) && (grid[# col + 2 , row + 0] == 0)
			{
				owin = true
				game_pause = true
				
				
			}
			
			
			
			// Coluna de X
			if (grid[# col , row] == 1) && (grid[# col + 1 , row] == 1) && (grid[# col + 2 , row] == 1)
			{
				xwin = true
				game_pause = true
				
				
			}
			
			// Liha de X
			if (grid[# col , row] == 1) && (grid[# col  , row + 1] == 1) && (grid[# col  , row + 2] == 1)
			{
				xwin = true
				game_pause = true
				
				
			}
			
			// Diagonal de X
			
			if (grid[# col, row] == 1) && (grid[# col + 1 , row + 1] == 1) && (grid[# col + 2 , row + 2] == 1)
			{
				xwin = true
				game_pause = true
				
				
			}
			
			if (grid[# col, row + 2] == 1) && (grid[# col + 1 , row + 1] == 1) && (grid[# col + 2 , row + 0] == 1)
			{
				xwin = true
				game_pause = true
				
				
			}
			
			
		}
}

if owin && !owin_seq{
	owin_seq = layer_sequence_create("GameOver",x,y,sq_owin)
	alarm[0] = room_speed * 2
}

if xwin && !xwin_seq{
	xwin_seq = layer_sequence_create("GameOver",x,y,sq_xwin)
	alarm[0] = room_speed * 2
}



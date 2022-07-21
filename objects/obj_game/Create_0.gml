// Cria a ds grid e inicia o obj_game


// Blank = -1
// O = 0
// X = 1
game_turn = 0;
turn = 0;
level = -1;
game_pause = false;
owin_seq = noone
xwin_seq = noone
owin = false;
xwin = false;
grid = ds_grid_create(3,3);

ds_grid_set_region(grid, 0, 0, 2, 2, -1);
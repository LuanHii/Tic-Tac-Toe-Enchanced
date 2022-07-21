/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)
draw_set_color(c_green)

if turn == 0 
{
	draw_text(20,20,"Vez do azul!")
}

else
{
	draw_text(20,20,"Vez do vermelho!")
}
draw_text(20,40,"Turno da partida: " + string(game_turn))
draw_text(20,60,"Aperte espaco para resetar")




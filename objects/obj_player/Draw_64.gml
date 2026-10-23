metade_da_tela = room_width / 2 + 55;
//desenhando minhas vidas
for(var i = 0; i < vida; i++)
{
    draw_sprite(spr_vida, 0, metade_da_tela + i * 32, 632)
}
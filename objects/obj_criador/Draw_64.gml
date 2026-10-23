//desenhando os pontos na tela
//setando a fonte
draw_set_font(fnt_pontos);

draw_text(room_width / 2 + 40, 5, "Pontos: " + string(global.pontos)) //pontos
draw_text(room_width / 2 + 40, 35, "Recorde: " + string(global.recorde)) //recorde

//resetando a fonte
draw_set_font(-1);
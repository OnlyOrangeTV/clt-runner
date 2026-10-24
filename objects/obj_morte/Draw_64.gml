//pegando as dimensoes da tela verticalmente
var _meio_tela_y = display_get_gui_height() / 2;
//pegando as dimensoes da tela horizontalmente
var _meio_tela_x = display_get_gui_width() / 2;

//alinhando o texto
draw_set_halign(1);


//definindo a fonte
draw_set_font(fnt_derrota);


//desenhando o texto de morte
draw_set_colour(c_blue);

draw_text(_meio_tela_x, 100, "DERROTA!!!")
draw_set_colour(-1);

draw_text(_meio_tela_x, 150, "Você virou um \n CLT")


//resetando o alinhamento
draw_set_halign(0);

//resetando a fonte
draw_set_font(-1);


//alinhando o texto
draw_set_valign(1);

//definindo a fonte
draw_set_font(fnt_morte);

//desenhando no meio da tela
for(var i = 0; i < array_length(opcoes); i++)
{
    //variavel da cor do texto
    var _cor = c_white;
    
    //se estiver na opção atual a cor fica vermelha
    if (i == atual)
    {
        _cor = c_red;
    }
    
    draw_set_colour(_cor);
    
    //desenhando refrente ao i
    draw_text(100, _meio_tela_y + i * 30, opcoes[i]);
    
    draw_set_colour(-1);
}

//resetando o set
draw_set_valign(0);
draw_set_font(-1);
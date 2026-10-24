//pegando as dimensoes da tela verticalmente
var _meio_tela_y = display_get_gui_height() / 2;
//pegando as dimensoes da tela horizontalmente
var _meio_tela_x = display_get_gui_height() / 2;

//desenhando o texto de morte




//alinhando o texto
draw_set_valign(1);


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
    draw_text(200, _meio_tela_y + i * 20, opcoes[i]);
    
    draw_set_colour(-1);
}

//resetando o set
draw_set_valign(0);
//opções do menu
opcoes = ["Recomeçar", "Sair"];

atual = 0;

margem = 20;

controla_menu = function()
{
    //mudando meu atual
    //se eu apertar nas setinhas
    if (keyboard_check_pressed(vk_down))
    {
        atual++;
        
        //tocando o som
        toca_som(snd_zap, 0)
        
        margem = 0;
    }
    if (keyboard_check_pressed(vk_up))
    {
        atual--;
        
        //tocando o som
        toca_som(snd_zap, 0)
        
        margem = 0;
    }
    
    atual = clamp(atual, 0, array_length(opcoes) - 1);
    
    margem = lerp(margem, 30, .1);
    
    //checando se apertou enter
    if (keyboard_check_pressed(vk_enter))
    {
        ativa_menu();
    }
}

ativa_menu = function()
{
    //fazendo o menu funcionar
    switch (atual) 
    {
    	//Recomeçar
        case 0:
            global.vivo = true;
            room_restart();
        break;
        
        //sair
        case 1:
            game_end();
        break;
    }
}

desenha_menu = function()
{
    //pegando as dimensoes da tela verticalmente
    var _meio_tela_y = display_get_gui_height() / 2;
    //pegando as dimensoes da tela horizontalmente
    var _meio_tela_x = display_get_gui_width() / 2;
    
    //alinhando o texto
    draw_set_halign(1);
    
    
    //definindo a fonte
    draw_set_font(fnt_derrota);
    
    
    //desenhando o texto de morte
    draw_set_colour(c_black);
    draw_text(_meio_tela_x + 5, 100, "DERROTA!!!")
    
    
    draw_set_colour(c_black);
    draw_text(_meio_tela_x + 5, 180, "Você virou um \n CLT")
    
    
    
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
        
        //margem do atual
        var _marg = 0;
        
        //se estiver na opção atual a cor fica vermelha
        if (i == atual)
        {
            _cor = c_red;
            
            _marg = margem;
        }
        
        draw_set_colour(_cor);
        
        //desenhando refrente ao i
        draw_text(100 + _marg, _meio_tela_y + i * 30, opcoes[i]);
        
        draw_set_colour(-1);
}

//resetando o set
draw_set_valign(0);
draw_set_font(-1);
}

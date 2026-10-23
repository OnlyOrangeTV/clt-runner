//fazendo o player trocar de lado
//se apertei espaço e ja eto em um lado
if (keyboard_check_pressed(vk_space) and x == destino)
{
    //mudando meu destino
    if (destino == 164)
    {
        destino = 16;
    }
    else
    {
        destino = 164;
    }
    
    
    image_xscale *= -1; //invertendo a sprite
}

//indo para o destino
x = lerp(x, destino, .2);

//arredondando o x
if ((x >= destino - 16 and destino == 164) or (x <= destino + 16 and destino == 16))
{
    x = destino;
}

show_debug_message(global.pontos)

coleta_item();
perde_vida();
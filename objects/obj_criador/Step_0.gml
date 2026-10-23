fase_atual = global.level[define_level];

//definindo o level do jogo com base nos pontos do player
define_level = floor(global.pontos / 50)

//se estiver na direita viro para esquerda
//se não viro para a direita
if (_x == 20)
{
    xscale = 1;
}
else
{
    xscale = -1;
}

timer_cria--; //inicianod o timer

//criando a instância quando o timer tocar
if (timer_cria < 1)
{
    var _objeto = instance_create_layer(_x, -16, "colect_enemie", opcoes[criador]);
    _objeto.vspeed = 1.5 * fase_atual;
    _objeto.image_xscale = xscale;
    
    //timer para criar os obstaculos e itens
    timer_cria = random_range(20, 50) - round(fase_atual * 1.5);
    
    //variaveis de randomização
    _x = choose(20, 161);
    
    criador = random(5);
}

layer_background_speed(spr_bg, 100)
show_debug_message(define_level)
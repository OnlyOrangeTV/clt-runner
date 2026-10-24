randomise();

fase_atual = 1;

define_level = 0;

//timer para criar os obstaculos e itens
timer_cria = 60;

//variaveis de randomização
_x = choose(20, 161);

//olhando para o lado certo
xscale = 1;


criador = floor(random(5));
opcoes = [obj_clt, obj_batata, obj_burg, obj_chocolate, obj_coxinha]

//Método para definir o level
definindo_fase = function()
{
    //valor da variavel define level
    var _define_level = define_level * 10;
    
    //definindo o level do jogo com base nos pontos do player
    define_level = floor(global.pontos / (50 + _define_level))
    
    //variavel para a fase atual
    fase_atual = global.level[define_level];
}

//Método de criar os objetos
cria_objeto = function ()
{
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
        timer_cria = random_range(20, 50) / fase_atual;
        
        //variaveis de randomização
        _x = choose(20, 161);
        
        criador = random(5);
    }
}

//Método desenha pontos
desenha_pontos = function()
{
    //desenhando os pontos na tela
    //setando a fonte
    draw_set_font(fnt_pontos);
    
    draw_text(room_width / 2 + 40, 5, "Pontos: " + string(global.pontos)) //pontos
    draw_text(room_width / 2 + 40, 35, "Recorde: " + string(global.recorde)) //recorde
    
    //resetando a fonte
    draw_set_font(-1);
}
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
    _objeto.vspeed = 1.5;
    _objeto.image_xscale = xscale;
    
    //timer para criar os obstaculos e itens
    timer_cria = random_range(20, 80);
    
    //variaveis de randomização
    _x = choose(20, 161);
    
    criador = random(5);
}
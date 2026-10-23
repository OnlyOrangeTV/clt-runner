randomise();

define_level = 0;
//timer para criar os obstaculos e itens
timer_cria = 60;

//variaveis de randomização
_x = choose(20, 161);

//olhando para o lado certo
xscale = 1;


criador = floor(random(5));
opcoes = [obj_clt, obj_batata, obj_burg, obj_chocolate, obj_coxinha]
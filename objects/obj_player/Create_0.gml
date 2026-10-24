//tocando som da trilha sonora
toca_som(snd_trilha, 0, 1);

//variavel de vida
vida = 3;

//setando a posição inicial do player
x = 16;
y = 256;

//vendo aonde tenho que ir
destino = 16;

//Método coleta item
coleta_item = function()
{
    //pegando o id da comida que toquei
    var _comida_tocada = instance_place(x, y, obj_food);
    
    //se eu tocar na comida ela some
    if (place_meeting(x, y, obj_food))
    {
        //variando o pitch
        var _pitch = random_range(.8, 1.2)
        
        //tocando o som
        toca_som(snd_pickup, 0, _pitch)
        
        //se a instância existir
        if (instance_exists(_comida_tocada))
        {
            instance_destroy(_comida_tocada); //destruo ela
        }
        
        //aumentando a minha pontuação
        global.pontos++;
    }
}

//Método de perder vida
perde_vida = function()
{
    //pegando o id da clt que toquei
    var _clt_tocada = instance_place(x, y, obj_clt);
    
    //se tocar na clt perco
    if (place_meeting(x, y, obj_clt))
    {
        //destruindo a clt
        //se a instância existir
        if (instance_exists(_clt_tocada))
        {
            instance_destroy(_clt_tocada); //destruo ela
        }
        
        //perdendo vida
        vida--;
        
        //tocando som de dano
        toca_som(snd_dano, 0) 
        
        //tremendo a tela
        screenshake(30);
        
        //se to com zero de vida
        if (vida < 1)
        {
            //tocando som de dano
            toca_som(snd_dano, 0, .7);
            
            //tremendo a tela
            screenshake(60);
            
            //colocando o recorde
            //se bati o recorde
            if (global.pontos > global.recorde)
            {
                global.recorde = global.pontos;
            }
            
            //resetando os meus pontos
            global.pontos = 0;
            
            //dizendo que morri
            global.vivo = false;
        }
    }
}

//Método de movimentação
movimentacao = function()
{
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
}
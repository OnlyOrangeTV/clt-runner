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
            
            global.vivo = false;
        }
    }
}


//Método toca som
toca_som = function(_som, _loop, pitch = random_range(.9, 1.1))
{
    //parando o som de dano
    audio_stop_sound(_som);
    //som de dano
    audio_play_sound(_som, 0, _loop, , , pitch);
}

//tocando som da trilha sonora
toca_som(snd_trilha, 0, 1)
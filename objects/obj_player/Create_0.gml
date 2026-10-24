//parando de tocar a trilha
audio_stop_all()
//tocando a trilha sonora
audio_play_sound(snd_trilha, 0, 1);

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
        
        //parando de tocar o som
        audio_stop_sound(snd_pickup)
        //tocando o som de coletar
        audio_play_sound(snd_pickup, 0, 0, , , _pitch);
        
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
        
        //tremendo a tela
        screenshake(25);
        
        //se to com zero de vida
        if (vida < 1)
        {
            //tremendo a tela
            screenshake(50);
            
            //resetando os meus pontos
            global.pontos = 0;
            
            //colocando o recorde
            //se bati o recorde
            if (global.pontos > global.recorde)
            {
                global.recorde = global.pontos;
            }
            
            global.vivo = false;
        }
    }
}
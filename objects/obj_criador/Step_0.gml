layer_vspeed("bg", fase_atual);

//não roda se o player estiver morto
if (!global.vivo)  
{
    fase_atual = 0;
    
    exit;
}    

 


definindo_fase();

cria_objeto();
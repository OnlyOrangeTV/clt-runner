//Não roda se o player estiver morto
if (!global.vivo) 
{
    image_index = 0;
    
    exit;
}

movimentacao();

coleta_item();

perde_vida();
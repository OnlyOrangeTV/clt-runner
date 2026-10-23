global.pontos = 0;

global.level = [1, 2, 3, 4, 5, 6, 7, 8, 9];

global.recorde = 0;

global.vivo = true;

function screenshake(_treme = 0)
{
    //vendo se o objeto existe
    if (instance_exists(obj_screenshake))
    {
        //acessando o objeto
        with(obj_screenshake)
        {
            //se o novo treme for maior que o atual
            if (_treme > treme)
            {
                treme = _treme; //mudo para o novo treme
            }
        }
    }
}
//mudando meu atual
//se eu apertar nas setinhas
if (keyboard_check_pressed(vk_down))
{
    atual++;
}
if (keyboard_check_pressed(vk_up))
{
    atual--;
}

atual = clamp(atual, 0, array_length(opcoes) - 1);
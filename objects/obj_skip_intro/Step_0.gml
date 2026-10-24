//fazendo ele piscar
if (image_alpha < .1)
{
    alpha = 1;
}
else if (image_alpha > .9)
{
    alpha = 0;
}

image_alpha = lerp(image_alpha, alpha, .05);
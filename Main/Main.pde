ObjetoAnimado o1;
ObjetoIlustrado o2;

boolean keyBool;

void setup() 
{
    keyBool = false;
    blendMode(BLEND);
    noStroke();
    o1 = criarObjeto(108, 140, 10, 60, 0);
    o1.adicionaAnimacao("DIREITA", "scott_DIR_", 8);
    o1.adicionaAnimacao("ESQUERDA", "scott_ESQ_", 8);
    o2 = criarObjetoIlustrado(50, 50, 80, 80, 1);
    o2.defineImagem("mario.png");
    //o3 = criarObjeto("mario.png", 50, 50, 100, 50, 4);
    frameRate(10);
    defineEmDesenvolvimento(true);
}
void draw()
{
    background(166, 255, 0);

    if (!keyPressed)
    {
        o1.imprime("DIREITA");
    } else
    {
        if (key == CODED)
        {
            if (keyCode == UP)
            {
                o1.decrementaY(15);
            }
            if (keyCode == DOWN)
            {
                o1.incrementaY(15);
            }
            if (keyCode == LEFT)
            {
                o1.decrementaX(15);
                o1.imprime("ESQUERDA");
            }
            if (keyCode == RIGHT)
            {
                o1.incrementaX(15);
                o1.imprime("DIREITA");
            }
            if (keyCode == SHIFT)
            {
                o1.incrementaZ(15);
            }
            if (keyCode == CONTROL)
            {
                o1.gira();
            }
        }
    }

    o1.imprime();
    o2.imprime();

    if (estaColidindo(o1, o2))
    {
        text("Não colidiu! ", 30, 200);
    } else
    {
        text("Colidiu! ", 30, 200);
    }

}


void keyReleased()
{
    if (key == ' ')
    {
        o1.decrementaZ(3);
    }
}
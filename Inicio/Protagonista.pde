class Protagonista
{
  private boolean invencible;
  private int vida, tiempo, velocidad = 3, i;
  private float posX;
  //Posicion flotante en x, la cual sera la entrada del mouse
  public void setX(float posX)
  {
    //Limitar pocision evitando que el protagonista se salga de la pantalla
    this.posX = constrain(posX, 10, 880);
    if(tiempo == velocidad)
    {
      i++;
      tiempo = 0;
      if(i == 2);
      {
        i=0;
      }
    }
    tiempo ++;
    pushMatrix();
    translate(this.posX,550);
    image(imagenProtagonista,81,103);
    //Modo invencible
    if(invencible)
    {
      image(imagenCampo, 80,100,77,62);
    }
    //Si no se encuentra en modo invencible
    else
    {
      sonido_campo.stop();
    }
    
    popMatrix();
  }
  public float getX()
  {
    return this.posX;
  }
  //Si es invencible sera verdadero
  public void setInvencible(boolean invencible)
  {
    this.invencible = invencible;
  }
  public void setVida(int vida )
  {
    this.vida = vida;
  }
  public int getVida()
  {
    return this.vida;
  }
  public void BajarVida()
  {
    //Si invencible es falso la vida bajara 20 puntos
    if(invencible == false)
    {
      sonido_impacto.trigger();
      this.vida -= 20;
      }
  }
}

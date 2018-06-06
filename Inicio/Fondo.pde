class Fondo
{
  private int puntaje, contador;
  private int puntajeMaximo;
  private int vida;
  
  public void setFondo()
  {
    background(imagenFondo);
  }
  //cada 10 iteraciones del contador, el puntaje sumara 10
  public void masPuntaje()
  {
    contador++;
    if(contador == 10)
    {
      contador = 0;
      this.puntaje += 10;
    }
    //Pinta las imagenes y los textos de la pantalla
    textSize(30);
    text(this.puntaje,1100,100);
    text(this.puntajeMaximo, 1100,200);
    text(this.vida, 1100,300);
    text(cantidadBateria, 1100, 400);
    image(imagenCruz,1025,300,40,40);
    image(imagenBateria, 1025,400,40,40);
    image(imagenpuntaje, 1025,100,40,40);
    image(imagenMaxima, 1025, 200, 40, 40);
  }
    //
    public void setPuntaje(int puntaje)
    {
      this.puntaje = puntaje;
  
    }
    public int getPuntaje()
    {
      return this.puntaje;
  
    }
    //Guarda el nuevo puntaje si es mayor que el anterior
    public void setPuntajeMaximo()
    {
      if(this.puntaje > this.puntajeMaximo)
      {
        this.puntajeMaximo = this.puntaje;
      }
    }
    
    public void setVida(int vida)
    {
      this.vida = vida;
    }
  }

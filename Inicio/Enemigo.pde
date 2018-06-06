class Enemigo
{
  //atributos
  private int tam;
  private float posX;
  private float posY;
  private float velocidad, velRotacion, rotacion;
  
  //Metodo constructor para inicializar
  public Enemigo(int tam, float posX, float posY, float velocidad, float velRotacion)
  {
    this.tam = tam;
    this.posX = posX;
    this.posY = posY;
    this.velocidad = velocidad;
    this.velRotacion = velRotacion;
  }
  //Metodo encargado de mover el enemigo y de rotar
  public void pos()
  {
    posY += velocidad;
    pushMatrix();
    translate(posX, posY);
    rotate(rotacion+=velRotacion);
    image(imagenEnemigo, 0, 0, tam, tam);
    popMatrix();
    
    if(posY > 700)
    {
      Reset();
    }
  }
  //Devuelve valores aleatorios para el tamaño, la pocision y la velocidad de los enemigos
  public void Reset()
  {
    tam = (int)random(40, 100);
    posX = (int)random(tam/2, 980-tam/2);
    posY = (int)random(-50, -150);
    velocidad = random(5, 15);
    velRotacion = random(0.1, 0.5);
  }
  //Si el enemigo ha chocado con el protagonista
  public boolean Colision(float posX)
  {
    float distancia = dist(posX, 600, this.posX, this.posY);
    if(distancia < 25 + tam/2)
    {
      Reset();
      return true;
    }
    else
    {
      return false;
    }
  }
}

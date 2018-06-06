import ddf.minim.*;
//Declaracion de las imagenes
PImage imagenFondo = new PImage();
PImage imagenBateria = new PImage();
PImage imagenCruz = new PImage();
PImage imagenpuntaje = new PImage();
PImage imagenMaxima = new PImage();
PImage imagenProtagonista = new PImage();
PImage imagenCampo = new PImage();
PImage imagenEnemigo = new PImage();
PImage imagenPierde = new PImage();

Minim gestor;
AudioPlayer musica_fondo;
AudioSample sonido_impacto;
AudioSample sonido_campo;
AudioSample sonido_explosion;

//Objetos globales
Fondo miFondo = new Fondo();
Protagonista miProtagonista = new Protagonista();
//Arreglo de objetos, para la creacion de varios enemigos
Enemigo[] miEnemigo = new Enemigo[15];

//Declaracion de variables tipo booleano y entero
boolean impacto, activado, masBateria, destruido;
int tiempoInvencible, cantidadBateria;

void setup()
{
  size(1190,682);
  imageMode(CENTER);
  textAlign(CENTER,CENTER);
  cantidadBateria = 5;
  masBateria = true;
  //Cargar las imagenes con la funcion LoadImage
  imagenFondo = loadImage("Fondo.png");
  imagenBateria = loadImage("ramen.png");
  imagenCruz = loadImage("cruz.png");
  imagenpuntaje = loadImage("puntaje.png");
  imagenMaxima = loadImage("campeon.png");
  imagenProtagonista = loadImage("naruto.png");
  imagenEnemigo = loadImage("Kunai.png");
  imagenCampo = loadImage("plataforma1.png");
  imagenPierde = loadImage("perdio.png");

  //Cargar los sonidos
  gestor = new Minim(this);
  musica_fondo = gestor.loadFile("loop.mp3");
  musica_fondo.setGain(-20);
  sonido_impacto = gestor.loadSample("Sonido_Impacto.wav");
  sonido_impacto.setGain(-25);
  sonido_campo = gestor.loadSample("sonido_campo.wav");
  sonido_campo.setGain(-25);
  sonido_explosion = gestor.loadSample("Sonido_Explosion.wav");
  sonido_explosion.setGain(-25);
  musica_fondo.loop();
  for(int i =0; i<miEnemigo.length; i++)
  {
    miEnemigo[i] = new Enemigo((int)random(40,100), (int)random(80,900), (int)random(-50,-150), random(5,15), random(0.1,0.5));
    impacto = impacto || miEnemigo[i].Colision(miProtagonista.getX());
  }
  //Vida del protagonista
  miProtagonista.setVida(100);
}

void draw()
{
  //La condicion es que el protagonista tenga vida
  if(miProtagonista.getVida() >0)
  {
    Jugar();
    Invencibilidad();
    destruido = false;
  }
  else
  {
    //Si el protagonista no tiene vida, se mostrara una imagen diciendo que perdio
    miFondo.setPuntajeMaximo();
    miFondo.setPuntaje(0);
    musica_fondo.pause();
    cantidadBateria = 5;
    masBateria = true;
    if(!destruido)
    {
      textSize(45);
      sonido_campo.stop();
      sonido_explosion.trigger();
      destruido = true;
      image(imagenPierde, 500,350,701,400);
      
    }
  }
}

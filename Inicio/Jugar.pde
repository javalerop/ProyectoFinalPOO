void Jugar()
{
  miFondo.setFondo();
  miFondo.masPuntaje();
  miFondo.setVida(miProtagonista.getVida());
  miProtagonista.setX(mouseX);
  float resto = miFondo.getPuntaje()%2000;
  if(resto == 0);
  {
    if(!masBateria)
    {
      cantidadBateria++;
      masBateria = true;
    }
 else
  {
    masBateria = false;
  }
 
 for(int i=0; i<miEnemigo.length; i++)
 {
   miEnemigo[i].pos();
   impacto = impacto ||miEnemigo[i].Colision(miProtagonista.getX());
 }
}
}

//Aparecera el metodo invencible si hay una colision o un impacto
void Invencibilidad()
{
  if(impacto)
  {
    miProtagonista.BajarVida();
    miProtagonista.setInvencible(true);
    tiempoInvencible++;
    if(tiempoInvencible > 100)
    {
      impacto = false;
      tiempoInvencible = 110;
      miProtagonista.setInvencible(false);
      activado = false;
      
    }
    
  }
}
//activar el metodo invencibilidad dando clic izquierdo en el mouse
void mousePressed()
{
  if(mouseButton == LEFT)
  {
    if(cantidadBateria >0 && !activado && miProtagonista.getVida() > 0);
    {
      miProtagonista.setInvencible(true);
      cantidadBateria --;
      sonido_campo.trigger();
      activado = true;
    }
  }
}
//Reiniciar el juego en caso de perder
void keyPressed()
{
  if(key == 'x'){
    miProtagonista.setVida(100);
    cantidadBateria = 5;
    musica_fondo = gestor.loadFile("loop.mp3");
    musica_fondo.play();
    musica_fondo.setGain(-25);
  }
}

PROYECTO FINAL DE PROGRAMACION ORIENTADA A OBJETOS

INTEGRANTES: JHONNY ALEIDER VALERO PORTILLA

NOMBRE DEL PROYECTO: ESQUIVANDO

OBJETIVO PRINCIPAL

Aplicar los conocimientos que fueron adquiridos y comprendidos durante el curso de Programación Orientada a Objetos (POO)
para el manejo fluido de los sistemas computacionales.

DESCRIPCION

A través de los conocimientos adquiridos durante el curso de Programación Orientada a Objetos se logra realizar una aplicación que 
radica en el juego ESQUIVANDO, el cual consiste en obtener la mayor cantidad de puntos dependiendo del tiempo que hayas durado en el juego. 
El juego consiste en esquivar cierta cantidad de obstáculos (enemigos), de los cuales se puede proteger activando la función de 
invencibilidad, la cual convierte a la persona que esté jugando en invencible por unos segundos. Se realizó esta aplicación fin brindar
entretenimiento a aquellas personas que les interesan los juegos de agilidad mental y adrenalina y adrenalina.

INSTRUCCIONES DE EJECUCION DEL PROYECTO:

1. Abra el archivo “inicio.pde” y ejecútelo (allí encontrará las clases que se utilizaron para lograr el proyecto)
2. Después de ejecutar el archivo se abrirá el juego. El juego comenzara instantáneamente, por lo cual te debes mover con cierta agilidad.
3. Si desea activar el campo de protección, puedes hacer click derecho en el mouse, y automáticamente te volverás invencible.
4. A medida que vayas avanzando en el juego, tu puntaje ira subiendo, si mueres, se tomara el puntaje más alto que hayas hecho hasta el momento.
5. Cuando pierdas, puedes volver a jugar oprimiendo la tecla “x”, y volverás a principiar. La idea es que logres superar tu puntaje anterior.
6. Si deseas salir del juego, solamente oprime la tecla “esc”, y automáticamente habrás salido del juego.

CLASES, ATRIBUTOS Y METODOS:

El juego contiene los las siguientes clases, atributos y metodos.

1. CLASE PROTAGONISTA
    - Atributos:
         - Boolean invencible
         - Int vida
         - Float pos
    - Metodos:
         - SetX()
         - GetX()
         - SetInvencible()
         - SetVida()
         - GetVida()
         - BajarVida()

2. CLASE ENEMIGO:
    - Atributos:
         - Int tam
         - Float posX
         - Float posY
         - Float velocidad
         - Float rotacion
         - Float velocidadRotacion
    - Metodos:
         - enemigo()
         - pos()
         - reset()
         - Colision()

3. CLASE FONDO:
    - Atributos:
         - Int puntaje
         - Int puntajeMaximo
         - Int vida
    - Metodos:
         - SetFondo()
         - masPuntaje()
         - SetPuntaje()
         - GetPuntaje()
         - SetPuntajeMaximo()
         - SetVida()

4. OTROS METODOS Y OTRAS VARIABLES

    - Metodos:
        - Jugar()
        - Invencibilidad()
        - mousePressed()
        - KeyPressed()
    - Variables:
        - Boolean impacto
        - Boolean activado
        - Boolean masBateria
        - Int tiempoInvencible
        - Int CantidadBateria

DISCUSION DE RESULTADOS

El juego practicamente esta bien, simplemente contiene un error en la parte de la bateria, al parecer no esta funcionando como deberia.
Por lo tanto, el juego se encuentra en una fase de prueba, para de este modo poder hacer los cambios necesarios para que el juego pueda
ser un juego mas atractivo para la sociedad. Desde el punto de vista academico, me parece que se logro lo que se queria que era aplicar
los conceptos de programacion orientada objetos, conceptos aprendidos durante este semestre. Por ultimo cabe resaltar que el juego se encuentra en una
etapa de diseño y prueba, para poder detectar los errores y poder trabajar a base de ellos.

TRABAJO FUTURO

A continuacion algunas ideas pensadas de cara al futuro.

    1. En primer lugar la idea del juego es poder crear mas niveles con distintos personajes.
    2. Crear nuevos metodos como saltar, el cual le pueda permitir al protagonista tener mayor agilidad.
    3. Verificar y solucionar los errores, tales como el error de la bateria.

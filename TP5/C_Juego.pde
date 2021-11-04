class Juego {
  PImage start, perdiste;
  Fondo fondo;
  Obstaculo[] obstaculo;
  int cantObstaculos;
  Jugador player;
  Boton boton1, boton2, boton3, boton4;
  String estadoJuego;
  float x;
  Juego() {
    estadoJuego = "inicio";
    boton1 = new Boton( "", width/2, height/2, 300, 100 );
    boton2 = new Boton( "CREDITOS", width/2, height/2+110, 300, 100 );
    boton3 = new Boton( "VOLVER", width/2, height-60, 300, 100 );

    fondo = new Fondo(); 
    cantObstaculos= 25;
    obstaculo = new Obstaculo[cantObstaculos];
    for (int i = 0; i<cantObstaculos; i++) {
      obstaculo[i] = new Obstaculo();
    }
    player = new Jugador();
    start= loadImage("Start.png");
    perdiste= loadImage("Perdiste.jpg");
  }

  void actualizar() {

    if ( estadoJuego.equals("inicio")) {
      background(0);
      image(start, x, 0, width, height);
      boton1.actualizar();
    } else if (estadoJuego.equals("jugando")) {
      //mostrar lo que corresponde a jugar:
      fondo.actualizar();

       textSize(20);
      text("JUGANDO", 700, 20);
      for (int i = 0; i<cantObstaculos; i++) {
        obstaculo[i].colocarObstaculo();
        if ( obstaculo[i].colision(player.x+15, player.y+100, player.ancho-80, player.alto-135)) {
           image(perdiste,x,0, width, height);

        }
    
      }
  player.player();
  
    } 
  }
  void click() {
    if ( estadoJuego.equals("inicio")) {
      if ( boton1.mouseEstaEncima() ) {
        cambiarEstado("jugando");
      } 
    } else if (estadoJuego.equals("jugando")) {
      //mostrar lo que corresponde a jugar:
    } else if (estadoJuego.equals("creditos")) {
      //mostrar lo que corresponde a creditos:
      if ( boton3.mouseEstaEncima() ) {
        cambiarEstado ("inicio");
      }
    } else if (estadoJuego.equals("gano")) {
      //mostrar lo que corresponde a creditos:
      if ( boton3.mouseEstaEncima() ) {
        cambiarEstado ("inicio");
      }
    }
  }

  //metodos para ejecutar los cambios de estados:
  void cambiarEstado( String nuevoEstado_  ) {
    estadoJuego = nuevoEstado_;
    if (nuevoEstado_.equals("inicio") ) {
      //pongo en cero lo valores de inicio
    } else if (nuevoEstado_.equals("jugando") ) {
      //pongo en cero lo valores de inicio
    }
  }
  }

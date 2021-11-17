class Juego {
  PImage start, perdiste;
  Fondo fondo;
  Obstaculo[] obstaculo;
  int cantObstaculos, cantVidas;
  Jugador player;
  Boton boton1, boton2, boton3, boton4;
  String estadoJuego;
  float x;
  Textos texto1; //vidas
  Textos texto2; //ganaste
  Textos texto3; //perdiste
  Textos texto4;
  Textos vidas;

  Juego() {
    cantVidas=3;
    estadoJuego = "inicio";
    boton1 = new Boton( "", width/2, height/2, 300, 100 ); //comenzar juego
    boton2 = new Boton( "Volver a pantalla de inicio", width/2, height-60, 300, 100 );

    texto1= new Textos("vidas: ", 100, 20, 30);
    texto2= new Textos("Sobreviviste!!", width/2, height/2, 60);
    texto3= new Textos("Te atraparon!, una pena", width/2, height/2, 60);
    texto4= new Textos("Da click en el centro de la pantalla para comenzar", width/2, height/2+10, 30);
    vidas = new Textos("Vidas: ", 40, 25, 20); 
    fondo = new Fondo(); 
    player = new Jugador();
    cantObstaculos= 25;
    obstaculo = new Obstaculo[cantObstaculos];
    for (int i = 0; i<cantObstaculos; i++) {
      obstaculo[i] = new Obstaculo();
    }
    perdiste= loadImage("Perdiste.png");
  }

  void actualizar() {
    println(estadoJuego);
    if ( estadoJuego.equals("inicio")) {
      background(0);
      texto4.escribir();
      boton1.actualizar();
    } else if (estadoJuego.equals("jugando")) {
      //mostrar lo que corresponde a jugar:

      fondo.actualizar();
      vidas.escribir();
      for (int i = 0; i<cantObstaculos; i++) {
        obstaculo[i].colocarObstaculo();

        if ( obstaculo[i].colision(player.x+15, player.y+100, player.ancho-80, player.alto-135)) {
          cantVidas--;
          println(cantVidas);
        }
      }
      if (cantVidas <= 0) {
        image(perdiste, x, 0, width, height);
        player.player();
        boton2.actualizar();
        estadoJuego="perder";
      }
      if ( cantVidas !=0 ) {
        player.player();
      }
    }
  }

  //metodos para ejecutar los cambios de estados:
  void cambiarEstado( String nuevoEstado_  ) {
    estadoJuego = nuevoEstado_;
    if (nuevoEstado_.equals("inicio") ) {
    } else if (nuevoEstado_.equals("jugando") ) {
      //pongo en cero lo valores de inicio
    } else if (nuevoEstado_.equals("perder") ) {
      nuevoEstado_= "inicio";
    }
  }


  void click() {
    if ( estadoJuego.equals("inicio")) {
      if ( boton1.mouseEstaEncima() ) {
        cambiarEstado("jugando");
      }
    } else if (estadoJuego.equals("jugando")) {
      //mostrar lo que corresponde a jugar:
    } else if (estadoJuego.equals("perder"))
      if ( boton2.mouseEstaEncima() ) {
        cambiarEstado("inicio");
      }
  }
}

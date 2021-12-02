/// CLASE DE AVENTURA

class Aventura {
  int pantalla;
  PImage[] fondoImagen;
  BotonCircular BotonCircular1, BotonCircular2, BotonCircular3, BotonCircular4, BotonCircular5; //BotonCircular.actualizar
  opcionesA opcionA; // opA.dibujar
  opcionesB opcionB; //opA.dibujar
  Juego juego;
  TextAventura textos; // TextAventura.insertarTexto
  boolean DEBUG=true;

  Aventura() {
    BotonCircular1 = new BotonCircular( "click para comenzar", width/2, 470, 150);
    BotonCircular2 = new BotonCircular( "A", 80, 500, 40);
    BotonCircular3 = new BotonCircular( "B", 80, 550, 40);
    BotonCircular4 = new BotonCircular( "inicio", 20, 20, 40);
    BotonCircular5= new BotonCircular ("volver al inicio", width/2, 470, 150);
    opcionA= new opcionesA ();
    opcionB= new opcionesB ();
    juego= new Juego();
    textos= new TextAventura();
    pantalla=0;
    fondoImagen = new PImage[24] ;
    for ( int a= 0; a <= 23; a++) {
      fondoImagen[a] = loadImage("fondo-"+ nf(a, 2)+".jpg");
    }
  }




  void actualizar() {

    if (pantalla == 0) {
      background(0);
      image( fondoImagen[pantalla], 0, 0, width, height);
      BotonCircular1.actualizar();
    } else if (pantalla == 1) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      BotonCircular2.actualizar();
      BotonCircular3.actualizar();
      BotonCircular4.actualizar();
      textos.escribir(1);
      opcionA.dibujar(1);
      opcionB.dibujar(1);
    } else if (pantalla == 2) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      textos.escribir(2);
      BotonCircular5.actualizar();
    } else if (pantalla == 3) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      BotonCircular2.actualizar();
      BotonCircular3.actualizar();
      BotonCircular4.actualizar();
      textos.escribir(3);
      opcionA.dibujar(3);
      opcionB.dibujar(3);
    } else if (pantalla == 4) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      BotonCircular2.actualizar();
      BotonCircular3.actualizar();
      BotonCircular4.actualizar();
      textos.escribir(4);
      opcionA.dibujar(4);
      opcionB.dibujar(4);
    } else if (pantalla == 5) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      textos.escribir(5);
      BotonCircular5.actualizar();
   //   juego.actualizar();
    } else if (pantalla == 6) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      BotonCircular2.actualizar();
      BotonCircular3.actualizar();
      BotonCircular4.actualizar();
      textos.escribir(6);
      opcionA.dibujar(6);
      opcionB.dibujar(6);
    } else if (pantalla == 7) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      textos.escribir(7);
      BotonCircular5.actualizar();
    } else if (pantalla == 8) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      BotonCircular2.actualizar();
      BotonCircular3.actualizar();
      BotonCircular4.actualizar();
      textos.escribir(8);
      opcionA.dibujar(8);
      opcionB.dibujar(8);
    } else if (pantalla == 9) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      textos.escribir(9);
      BotonCircular5.actualizar();
      juego.actualizar();
    } else if (pantalla == 10) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      textos.escribir(10);
      BotonCircular5.actualizar();
     // juego.actualizar();
    } else if (pantalla == 11) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      BotonCircular2.actualizar();
      BotonCircular3.actualizar();
      BotonCircular4.actualizar();
      textos.escribir(11);
      opcionA.dibujar(11);
      opcionB.dibujar(11);
    } else if (pantalla == 12) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      textos.escribir(12);
      BotonCircular5.actualizar();
    } else if (pantalla == 13) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      BotonCircular2.actualizar();
      BotonCircular3.actualizar();
      BotonCircular4.actualizar();
      textos.escribir(13);
      opcionA.dibujar(13);
      opcionB.dibujar(13);
    } else if (pantalla == 14) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      textos.escribir(14);
      BotonCircular5.actualizar();
    } else if (pantalla == 15) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      BotonCircular2.actualizar();
      BotonCircular3.actualizar();
      BotonCircular4.actualizar();
      textos.escribir(15);
      opcionA.dibujar(15);
      opcionB.dibujar(15);
    } else if (pantalla == 16) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      BotonCircular2.actualizar();
      BotonCircular3.actualizar();
      BotonCircular4.actualizar();
      textos.escribir(16);
      opcionA.dibujar(16);
      opcionB.dibujar(16);
    } else if (pantalla == 17) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      BotonCircular2.actualizar();
      BotonCircular3.actualizar();
      BotonCircular4.actualizar();
      textos.escribir(17);
      opcionA.dibujar(17);
      opcionB.dibujar(17);
    } else if (pantalla == 18) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      textos.escribir(18);
      BotonCircular5.actualizar();
    } else if (pantalla == 19) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      textos.escribir(19);
      BotonCircular5.actualizar();
    } else if (pantalla == 20) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      BotonCircular2.actualizar();
      BotonCircular3.actualizar();
      BotonCircular4.actualizar();
      textos.escribir(20);
      opcionA.dibujar(20);
      opcionB.dibujar(20);
    } else if (pantalla == 21) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      textos.escribir(21);
      BotonCircular5.actualizar();
    } else if (pantalla == 22) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      textos.escribir(22);
      BotonCircular5.actualizar();
    } else if (pantalla == 23) {
      image( fondoImagen[pantalla], 0, 0, width, height);
      textos.escribir(23);
      BotonCircular5.actualizar();
    }
    if ( DEBUG ) {
      fill (0, 255, 0);
      text( pantalla, 720, 50);
    }
  }

  void click() {
    juego.click();
    if ( pantalla == 0 ) {
      if ( colision(mouseX, mouseY, width/2, 470, 150) )
        pantalla=1;
    } else if ( pantalla == 1 ) { 

      if ( colision ( mouseX, mouseY, 80, 500, 30) ) { // 500, 30 opcion A - 550,30 opcion B
        pantalla = 2; //pantalla del final
      }

      if ( colision ( mouseX, mouseY, 80, 550, 30) ) {
        pantalla=3;
      }

      if ( colision ( mouseX, mouseY, 20, 20, 30) ) {
        pantalla=0;
      }
    } else if ( pantalla == 2 ) {  // pantalla que tiene final

      if ( colision ( mouseX, mouseY, width/2, 470, 150) ) {
        pantalla=0;
      }
    } else if ( pantalla == 3 ) { 

      if ( colision ( mouseX, mouseY, 80, 500, 30) ) { 
        pantalla = 4;
      }

      if ( colision ( mouseX, mouseY, 80, 550, 30) ) {
        pantalla=11;
      } 

      if ( colision ( mouseX, mouseY, 20, 20, 40) ) {
        pantalla=0;
      }
    } else if ( pantalla == 4 ) { 

      if ( colision ( mouseX, mouseY, 80, 500, 30) ) { 
        pantalla = 6;
      }

      if ( colision ( mouseX, mouseY, 80, 550, 30) ) {
        pantalla=5;
      } 

      if ( colision ( mouseX, mouseY, 20, 20, 40) ) {
        pantalla=0;
      }
    } else if ( pantalla == 5 ) {

      if ( colision ( mouseX, mouseY, width/2, 470, 150) ) {
        pantalla=0;
      }
    } else if ( pantalla == 6 ) {

      if ( colision ( mouseX, mouseY, 80, 500, 30) ) { 
        pantalla = 8;
      }

      if ( colision ( mouseX, mouseY, 80, 550, 30) ) {
        pantalla=7;
      } 

      if ( colision ( mouseX, mouseY, 20, 20, 40) ) {
        pantalla=0;
      }
    } else if ( pantalla == 7 ) {

      if ( colision ( mouseX, mouseY, width/2, 470, 150) ) {
        pantalla=0;
      }
    } else if ( pantalla == 8 ) {

      if ( colision ( mouseX, mouseY, 80, 500, 30) ) { 
        pantalla = 9;
      }

      if ( colision ( mouseX, mouseY, 80, 550, 30) ) {
        pantalla=10;
      } 

      if ( colision ( mouseX, mouseY, 20, 20, 40) ) {
        pantalla=0;
      }
    } else if ( pantalla == 9 ) {

      if ( colision ( mouseX, mouseY, width/2, 470, 150) ) {
        pantalla=0;
      }
    } else if ( pantalla == 10 ) {

      if ( colision ( mouseX, mouseY, width/2, 470, 150) ) {
        pantalla=0;
      }
    } else if ( pantalla == 11 ) {


      if ( colision ( mouseX, mouseY, 80, 500, 30) ) { 
        pantalla = 12;
      }

      if ( colision ( mouseX, mouseY, 80, 550, 30) ) {
        pantalla=13;
      } 

      if ( colision ( mouseX, mouseY, 20, 20, 40) ) {
        pantalla=0;
      }
    } else if ( pantalla == 12 ) {


      if ( colision ( mouseX, mouseY, width/2, 470, 150) ) {
        pantalla=0;
      }
    } else if ( pantalla == 13) {

      if ( colision ( mouseX, mouseY, 80, 500, 30) ) { 
        pantalla = 14;
      }

      if ( colision ( mouseX, mouseY, 80, 550, 30) ) {
        pantalla=15;
      } 

      if ( colision ( mouseX, mouseY, 20, 20, 40) ) {
        pantalla=0;
      }
    } else if ( pantalla == 14 ) {

      if ( colision ( mouseX, mouseY, width/2, 470, 150) ) {
        pantalla=0;
      }
    } else if ( pantalla == 15 ) { 

      if ( colision ( mouseX, mouseY, 80, 500, 30) ) { 
        pantalla = 16;
      }

      if ( colision ( mouseX, mouseY, 80, 550, 30) ) {
        pantalla=23;
      } 

      if ( colision ( mouseX, mouseY, 20, 20, 40) ) {
        pantalla=0;
      }
    } else if ( pantalla == 16 ) { 

      if ( colision ( mouseX, mouseY, 80, 500, 30) ) { 
        pantalla = 20 ;
      } 

      if ( colision ( mouseX, mouseY, 80, 550, 30) ) {
        pantalla=17;
      } 

      if ( colision ( mouseX, mouseY, 20, 20, 40) ) {
        pantalla=0;
      }
    } else if ( pantalla == 17 ) {

      if ( colision ( mouseX, mouseY, 80, 500, 30) ) { 
        pantalla = 19;
      }

      if ( colision ( mouseX, mouseY, 80, 550, 30) ) {
        pantalla=18;
      } 

      if ( colision ( mouseX, mouseY, 20, 20, 40) ) {
        pantalla=0;
      }
    } else if ( pantalla == 18 ) {

      if ( colision ( mouseX, mouseY, width/2, 470, 150) ) {
        pantalla=0;
      }
    } else if ( pantalla == 19 ) {

      if ( colision ( mouseX, mouseY, width/2, 470, 150) ) {
        pantalla=0;
      }
    } else if ( pantalla == 20 ) {

      if ( colision ( mouseX, mouseY, 80, 500, 30) ) { 
        pantalla = 22 ;
      }

      if ( colision ( mouseX, mouseY, 80, 550, 30) ) {
        pantalla= 21 ;
      } 

      if ( colision ( mouseX, mouseY, 20, 20, 40) ) {
        pantalla=0;
      }
    } else if ( pantalla == 21 ) {

      if ( colision ( mouseX, mouseY, width/2, 470, 150) ) {
        pantalla=0;
      }
    } else if ( pantalla == 22 ) {

      if ( colision ( mouseX, mouseY, width/2, 470, 150) ) {
        pantalla=0;
      }
    } else if ( pantalla == 23 ) {

      if ( colision ( mouseX, mouseY, width/2, 470, 150) ) {
        pantalla=0;
      }
    }
  }













  boolean colision ( float x_, float y_, float xSup_, float ySup_, float rSup_  ) {

    float distancia = dist( x_, y_, xSup_, ySup_);
    if ( distancia < rSup_  ) {

      return true; //RESPUESTA DEL BOTON
    } else {

      return false;
    }
  }
}

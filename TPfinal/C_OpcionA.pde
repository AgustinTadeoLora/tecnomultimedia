/// CLASE DE AVENTURA

class opcionesA {
  
  String[] opA;

  opcionesA() {
    /*x=x_;
    y=y_;*/
    opA = loadStrings ("data/opcionesA.txt");
  }


  void dibujar( int linea) {
    pushStyle();
  //  textAlign(CENTER, CENTER);
    fill(200);
    textSize(20);
    text( opA[linea], 65 , 510);
    popStyle();
  }
}

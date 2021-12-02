
/// CLASE DE AVENTURA

class opcionesB {
 
  String[] opB;

  opcionesB() {
    /*x=x_;
     y=y_;*/

    opB = loadStrings ("data/opcionesB.txt");
  }


  void dibujar( int lineaB) {
    pushStyle();
    pushMatrix();
  //  textAlign(CENTER, CENTER);
    fill(200);
    textSize(20);
    text( opB[lineaB], 65 , 560);
    popMatrix();
    popStyle();
  }
}

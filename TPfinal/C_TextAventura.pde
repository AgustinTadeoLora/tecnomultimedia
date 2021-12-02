/// CLASE DE AVENTURA

class TextAventura {
 // float  x, y;
  String[] textos;

  TextAventura() {
  
   textos= loadStrings ("data/misTextos.txt");
  }

  void escribir( int linea ) {
    pushStyle();
    fill(20, 100);
    rect(140, 100, 520, 200);
    fill(255);
    textSize(20);
    textAlign(CENTER, CENTER);
    text( textos[linea], 150, 50, 500, 300);
    textAlign(CENTER, CENTER);
    popStyle();
  }
}

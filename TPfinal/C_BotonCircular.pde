/// CLASE DE AVENTURA
class BotonCircular{
String label;
float x, y, diam;

BotonCircular (String label_ , float x_, float y_ , float diam_){
    x = x_;
    y = y_;
    label = label_;
    diam= diam_;
}

void actualizar(){
  dibujar();
}

void dibujar(){
  pushStyle();
  pushMatrix();
  translate ( x, y );
  fill(100);
  ellipse ( 0,0, diam, diam);
  fill(255);
  textAlign ( CENTER,CENTER );
  textSize(15);
  text ( label ,0,0);
  popMatrix();
  popStyle();


}
 

























}

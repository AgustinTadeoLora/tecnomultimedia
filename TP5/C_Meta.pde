class Meta {
  float x, ancho, alto, velX;
  PImage img;
  


  Meta() {
    x= 20000;
    ancho = 400; 
    alto = 400;
    img= loadImage("meta.png");
    velX= -5;
  }

  void Final() {
    pushStyle();
    pushMatrix();

    image(img, x, 350, ancho, alto);
      x+=velX;
    popMatrix();
    popStyle();
    push();

    noFill();
    
    pop();
  }
  boolean colisionConMeta(float x2, float y2, float w2, float h2){
   boolean valor;
   if (x > x2+w2 || x+ancho < x2 || y2 > y2 + h2 || y2+alto < y2 ){
     valor = false;
   }else{
     valor = true;
   }
   return valor;
 }
}

class Obstaculo {
  float x, y, velX,ancho,alto;
  float rad_= 20;
  PImage img;
  boolean colisionado;


  Obstaculo() {
    x= 1500+random(0,4000);
    y= random (460, 585);
    String objeto = "Obstaculo"+int(random(2,6))+".PNG";
    
    img=loadImage(objeto);
    ancho=40;
    alto=40;
    velX= -10;
  }


  void colocarObstaculo() {
    pushStyle();
    pushMatrix();
   
    image(img, x, y, 40, 40);
    x+=velX;
    if (x<-0) {
      x=width+random(0,4000);
    }
  
    popMatrix();
    popStyle();
   // push();
    
    //  fill(255,0,255);

  //  rect(x+17,y+14,ancho-20,alto-20);
    //pop();
  }
  
 boolean colisionConPersonaje(float x2, float y2, float w2, float h2){
   boolean valor;
   if (x > x2+w2 || x+ancho < x2 || y > y2 + h2 || y+alto < y2 ){
     valor = false;
   }else{
     valor = true;
   }
   return valor;
 }

}

class Obstaculo {
  float x, y, velX,ancho,alto;
  float rad_= 20;
  PImage img;



  Obstaculo() {
    x= 1500+random(0,4000);
    y= random (490, 585);
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
    push();
    
      //fill(255,0,255);

    //rect(x+17,y+14,ancho-20,alto-20);
    pop();
  }
    boolean colision(float x_ , float y_ , float ancho_ , float alto_ ){
    if ( 
      x-ancho/2 < x_+ancho_/2
      && x+ancho/2 > x_-ancho_/2
      && y-alto/2 < y_+alto_/2
      && y+alto/2 > y_-alto_/2
    ) {
     //hay colision:

     return true;
    } else {
     return false; 
    }
    
    
  }
 

}

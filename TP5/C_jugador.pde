class Jugador {
  float x, y, ancho, alto;
  float mov = 6;
  float rad_= 20;
  PImage[] img;
  int movPersonaje;


  Jugador() {

    x = 0;
    y = 400;
    ancho = 100; 
    alto = 140;
    movPersonaje = 4;
    img = new PImage[movPersonaje];
    for (int i=0; i< movPersonaje; i++) {
      img[i]= loadImage("paso_"+nf(i,2)+".png");
    }
  }

  void player() {
    pushStyle();
    pushMatrix();

    image(img[(frameCount/3)%movPersonaje], x, y, ancho, alto);

    popMatrix();
    popStyle();
    push();
  
    noFill();
    rect(x+35,y+118,ancho-60,alto-130);
    pop();
    
    
    if (keyPressed) {
      if (keyCode == LEFT) {
        x-=mov;
      } else if (keyCode == RIGHT) {
        x+=mov;
      } else if (keyCode == UP) {
        y-=mov;
      } else if (keyCode == DOWN) {
        y+=mov;
      }

       x= constrain(x, 0, 600);
      y= constrain(y, 350, 500);
    }

  }
}

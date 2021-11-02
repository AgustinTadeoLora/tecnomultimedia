class Jugador{
  float x,y,ancho,alto;
  float mov = 2;
  PImage img;
  
  
  
 Jugador(){
  x = 0;
  y = 400;
  ancho = 100; 
  alto = 140;
  img=loadImage("jugador2.png");


 }

void player(){
  image(img, x ,y,ancho,alto);
   if(keyPressed){
     if(keyCode == LEFT){
       x-=mov;
     }
     else if (keyCode == RIGHT){
       x+=mov;
     } else if (keyCode == UP){
       y-=mov;
     }else if (keyCode == DOWN){
       y+=mov;
     }
     
     //x= constrain(x,0,width);
     //x= constrain(y,0,width);

}

}
}

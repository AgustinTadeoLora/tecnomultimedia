class Obstaculo{
  float x, y, velX;
  PImage img;
  
  
  Obstaculo(){
    x= 780;
    y= random (490, 585);
    img=loadImage("Obstaculo3.PNG");
    img=loadImage("Obstaculo4.PNG");
    img=loadImage("Obstaculo5.PNG");
    img=loadImage("Obstaculo2.PNG");
 
    velX= -10;
  }
  

  void colocarObstaculo(){
   
   image(img, x ,y, 40, 40);
      x+=velX;
      if(x<-width){
      x=0;
      }
  }


}

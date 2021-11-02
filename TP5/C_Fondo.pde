class Fondo{
  //propiedades:
  
  PImage imgFondo;
  float x;
  float velX;
  //constructor:
  Fondo(){
    imgFondo= loadImage("FondoBosque4.png");
    x = 0;
    velX = -10;
  }

  //Funcionalidad:
  void actualizar(){

    image(imgFondo, x , 0, width+800, height);
   
    x+=velX;
      if(x<-width){
      x=0;
 
        }
   
    }
  } 

 

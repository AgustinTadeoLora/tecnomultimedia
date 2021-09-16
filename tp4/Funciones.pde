// aca pongo el codigo de mis funciones

void botonDeInicio( String label_ , float x_ , float y_ , float diam_ ){
  pushStyle();
  pushMatrix();
  translate ( x_, y_ );
  fill(100);
  //ellipse ( 0,0, diam_, diam_);
  fill(255);
  textAlign ( CENTER,CENTER );
  textSize(15);
  text ( label_ ,0,0);
  popMatrix();
  popStyle();
}


void botonCircular( String label_ , float x_ , float y_ , float diam_ ){
  pushStyle();
  pushMatrix();
  translate ( x_, y_ );
  fill(100);
  ellipse ( 0,0, diam_, diam_);
  fill(255);
  textAlign ( CENTER,CENTER );
  textSize(15);
  text ( label_ ,0,0);
  popMatrix();
  popStyle();
}

boolean clickEnCirculo ( float x_ , float y_ , float xSup_ , float ySup_ , float rSup_  ){
  
  float distancia = dist( x_, y_ , xSup_ , ySup_);
   if( distancia < rSup_  ){
     
    return true; //RESPUESTA DEL BOTON

   } else  {
     
     return false; 
   }
}

void insertarTexto( String texto_) {
  pushStyle();
  fill(20,100);
  rect(40,100,520,200);
  fill(255);
  textSize(20);
  textAlign(CENTER,CENTER);
  text( texto_, 50 , 50, 500,300);
  textAlign(CENTER,CENTER);
  popStyle();
}

void opcionA( String opA_) {
  pushStyle();
  fill(200);
  textSize(20);
  text( opA_, 65 , 490, 600,400);
  textAlign(CENTER,CENTER);
  popStyle();
}

void opcionB( String opB_) {
  pushStyle();
  fill(200);
  textSize(20);
  text( opB_ , 65 , 540, 600,400);
  textAlign(CENTER,CENTER);
  popStyle();
}

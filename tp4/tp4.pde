/* Agustin Lora
LEGAJO: 88105/5
TP 4: AVENTURA GRAFICA
link de explicacion del codigo: https://www.youtube.com/watch?v=LIWWS-4X4p4
*/


int pantalla;
String[] textos, opA , opB ;
boolean DEBUG = false ;
PImage[] fondoImagen;

void setup(){
  size(600,600);
  pantalla=0;
  textos= loadStrings ("data/misTextos.txt");
  opA = loadStrings ("data/opcionesA.txt");
  opB = loadStrings ("data/opcionesB.txt");
  fondoImagen = new PImage[24] ;
 for ( int a= 0 ; a <= 23 ; a++){
   fondoImagen[a] = loadImage("fondo-"+ nf(a,2)+".jpg");
 }

}

void draw(){
  background(20,20,60);
  if ( pantalla == 0 ){ // pantalla de inicio,comienzo de la historia
    image( fondoImagen[pantalla],0,0, width, height);
    botonDeInicio( "click para comenzar", width/2, 470, 150);
    
  } else if ( pantalla == 1 ) { 
    image( fondoImagen[pantalla],0,0, width, height);
    opcionA( opA  [pantalla]);
    opcionB( opB  [pantalla]);
    insertarTexto( textos[pantalla]);
    botonCircular ("A", 80,500,40);  //Quedarse tirados en el sillon.
    botonCircular ("B", 80,550,40);  //Proponerle a juan visitar el bosque tenebroso.
    botonCircular ("inicio",20,20,40);
    
  } else if ( pantalla == 2 ) { // pantalla que contiene un final.
     image( fondoImagen[pantalla],0,0, width, height);
    insertarTexto( textos[pantalla]);
    botonCircular ("volver a inicio",width/2, 470, 150);

  } else if ( pantalla == 3 ) { // juan acepta ir motivado
    
     image( fondoImagen[pantalla],0,0, width, height);
     opcionA( opA  [pantalla]);
     opcionB( opB  [pantalla]);
     insertarTexto( textos[pantalla]);
     botonCircular ("A", 80,500,40); //Dices de adentrarte al bosque sin miedo.
     botonCircular ("B", 80,550,40); //Dices de adentrarse al bosque con cuidado.           
    botonCircular ("inicio",20,20,40);
    
  } else if ( pantalla == 4 ) { //encuentran una cabaña / llegas a aca por la pantalla 3
     image( fondoImagen[pantalla],0,0, width, height);
     opcionA( opA  [pantalla]);
     opcionB( opB  [pantalla]);
     insertarTexto( textos[pantalla]);
     botonCircular ("A", 80,500,40); //Entrar.
     botonCircular ("B", 80,550,40); //No entrar.  
    botonCircular ("inicio",20,20,40);
   
   
  } else if ( pantalla == 5 ) {
    
    image( fondoImagen[pantalla],0,0, width, height);
    insertarTexto( textos[pantalla]);
    botonCircular ("volver a inicio",width/2, 470, 150);
     
  } else if ( pantalla == 6 ) {
    
     image( fondoImagen[pantalla],0,0, width, height);
     opcionA( opA  [pantalla]);
     opcionB( opB  [pantalla]);
     insertarTexto( textos[pantalla]);
     botonCircular ("A", 80,500,40); //Saltar por la ventana y huir.
     botonCircular ("B", 80,550,40); //Bajar al sotano.  
    botonCircular ("inicio",20,20,40);
    
   
  } else if ( pantalla == 7 ) { 
    image( fondoImagen[pantalla],0,0, width, height);
    insertarTexto( textos[pantalla]);
    botonCircular ("volver a inicio",width/2, 470, 150);
    
  } else if ( pantalla == 8 ) {
     image( fondoImagen[pantalla],0,0, width, height);
     opcionA( opA  [pantalla]);
     opcionB( opB  [pantalla]);
     insertarTexto( textos[pantalla]);
     botonCircular ("A", 80,500,40); //Huir.
     botonCircular ("B", 80,550,40); //Ayudar a juan a escapar.  
    botonCircular ("inicio",20,20,40);
    
  } else if ( pantalla == 9 ) {
    image( fondoImagen[pantalla],0,0, width, height);
    insertarTexto( textos[pantalla]);
    botonCircular ("volver a inicio",width/2, 470, 150);
    
  } else if ( pantalla == 10 ) {
    image( fondoImagen[pantalla],0,0, width, height);
   insertarTexto( textos[pantalla]);
   botonCircular ("volver a inicio",width/2, 470, 150);
    
  } else if ( pantalla == 11 ) {
     image( fondoImagen[pantalla],0,0, width, height);
     opcionA( opA  [pantalla]);
     opcionB( opB  [pantalla]);
     insertarTexto( textos[pantalla]);
     botonCircular ("A", 80,500,40); //Ignorar el ruido.
     botonCircular ("B", 80,550,40); //Correr.  
    botonCircular ("inicio",20,20,40);
    
  } else if ( pantalla == 12 ) {
    
     image( fondoImagen[pantalla],0,0, width, height);
     insertarTexto( textos[pantalla]);
     botonCircular ("volver a inicio",width/2, 470, 150);
    
  } else if ( pantalla == 13) {
    
     image( fondoImagen[pantalla],0,0, width, height);
     opcionA( opA  [pantalla]);
     opcionB( opB  [pantalla]);
     insertarTexto( textos[pantalla]);
     botonCircular ("A", 80,500,40); //Alumbrar con un encendedor.
     botonCircular ("B", 80,550,40); //Encender la linterna de sus celulares.  
    botonCircular ("inicio",20,20,40);
    
  } else if ( pantalla == 14 ) {
    image( fondoImagen[pantalla],0,0, width, height);
    insertarTexto( textos[pantalla]);
    botonCircular ("volver a inicio",width/2, 470, 150);
  
  } else if ( pantalla == 15 ) { 
     image( fondoImagen[pantalla],0,0, width, height);
     opcionA( opA  [pantalla]);
     opcionB( opB  [pantalla]);
     insertarTexto( textos[pantalla]);
     botonCircular ("A", 80,500,40); //Subir al piso de arriba.
     botonCircular ("B", 80,550,40); //Bajar al sotano.  
    botonCircular ("inicio",20,20,40);
    
  } else if ( pantalla == 16 ) { 
    
      image( fondoImagen[pantalla],0,0, width, height);
     opcionA( opA  [pantalla]);
     opcionB( opB  [pantalla]);
     insertarTexto( textos[pantalla]);
     botonCircular ("A", 80,500,40); //David se ofrece para distraer al asesino.
     botonCircular ("B", 80,550,40); //Enfrentar al ser.  
     botonCircular ("inicio",20,20,40);

  } else if ( pantalla == 17 ) {
    
     image( fondoImagen[pantalla],0,0, width, height);
     opcionA( opA  [pantalla]);
     opcionB( opB  [pantalla]);
     insertarTexto( textos[pantalla]);
     botonCircular ("A", 80,500,40); //Ayudar a juan. 
     botonCircular ("B", 80,550,40); //David huye sin importarle nada y deja a su amigo morir.  
    botonCircular ("inicio",20,20,40);
    
  } else if ( pantalla == 18 ) {
    
    image( fondoImagen[pantalla],0,0, width, height);
    insertarTexto( textos[pantalla]);
    botonCircular ("volver a inicio",width/2, 470, 150);
    
  } else if ( pantalla == 19 ) {
    
     image( fondoImagen[pantalla],0,0, width, height);
    insertarTexto( textos[pantalla]);
    botonCircular ("volver a inicio",width/2, 470, 150);
    
  } else if ( pantalla == 20 ) {
     image( fondoImagen[pantalla],0,0, width, height);
     opcionA( opA  [pantalla]);
     opcionB( opB  [pantalla]);
     insertarTexto( textos[pantalla]);
     botonCircular ("A", 80,500,40); //tirarle un objeto al asesino.
     botonCircular ("B", 80,550,40); //Empujar al asesino.  
    botonCircular ("inicio",20,20,40);
    
    
  } else if ( pantalla == 21 ) {
     image( fondoImagen[pantalla],0,0, width, height);
    insertarTexto( textos[pantalla]);
    botonCircular ("volver a inicio",width/2, 470, 150);
    
  } else if ( pantalla == 22 ) {
    image( fondoImagen[pantalla],0,0, width, height);
    insertarTexto( textos[pantalla]);
    botonCircular ("volver a inicio",width/2, 470, 150);
    
  } else if ( pantalla == 23 ) {
    image( fondoImagen[pantalla],0,0, width, height);
    insertarTexto( textos[pantalla]);
    botonCircular ("volver a inicio",width/2, 470, 150);
    
    
  } 
   
  if ( DEBUG ){
     fill (0,255,0);
     text( pantalla, 520 ,120);
   }
 
}


void mousePressed(){  // aca es donde voy a hacer click a la opcion A o B y permitirme avanzar en las pantallas

 if ( pantalla == 0 ){ 
     if ( clickEnCirculo(mouseX, mouseY, width/2, 470, 175 ) );{
     pantalla=1;
     }
   
  } else if ( pantalla == 1 ) { 
    
    if ( clickEnCirculo ( mouseX, mouseY, 80, 500, 30) ){ // 500, 30 opcion A - 550,30 opcion B
      pantalla = 2; //pantalla del final
    }
    
    if ( clickEnCirculo ( mouseX, mouseY, 80, 550, 30) ){
      pantalla=3; 
    }
     
    if ( clickEnCirculo ( mouseX, mouseY, 20, 20, 30) ){
      pantalla=0;
    }
   
       
  } else if ( pantalla == 2 ) {  // pantalla que tiene final
    
    if ( clickEnCirculo ( mouseX, mouseY, width/2, 470, 150) ){
      pantalla=0;
    }
    
  } else if ( pantalla == 3 ) { 
    
    if ( clickEnCirculo ( mouseX, mouseY, 80, 500, 30) ){ 
      pantalla = 4; 
    }
    
    if ( clickEnCirculo ( mouseX, mouseY, 80, 550, 30) ){
      pantalla=11; 
    } 
    
     if ( clickEnCirculo ( mouseX, mouseY, 20, 20, 40) ){
      pantalla=0;
    }
    
  } else if ( pantalla == 4 ) { 
    
      if ( clickEnCirculo ( mouseX, mouseY, 80, 500, 30) ){ 
      pantalla = 6; 
    }
    
    if ( clickEnCirculo ( mouseX, mouseY, 80, 550, 30) ){
      pantalla=5; 
    } 
    
     if ( clickEnCirculo ( mouseX, mouseY, 20, 20, 40) ){
      pantalla=0;
    }
    
  } else if ( pantalla == 5 ) {
     
      if ( clickEnCirculo ( mouseX, mouseY, width/2, 470, 150) ){
      pantalla=0;
      }
    
 
  } else if ( pantalla == 6 ) {
    
      if ( clickEnCirculo ( mouseX, mouseY, 80, 500, 30) ){ 
        pantalla = 8;
    }
    
    if ( clickEnCirculo ( mouseX, mouseY, 80, 550, 30) ){
        pantalla=7; 
    } 
    
     if ( clickEnCirculo ( mouseX, mouseY, 20, 20, 40) ){
      pantalla=0;
    }
    
  } else if ( pantalla == 7 ) {
    
     if ( clickEnCirculo ( mouseX, mouseY, width/2, 470, 150) ){
      pantalla=0;
      }
    
  } else if ( pantalla == 8 ) {
    
      if ( clickEnCirculo ( mouseX, mouseY, 80, 500, 30) ){ 
        pantalla = 9; 
    }
    
    if ( clickEnCirculo ( mouseX, mouseY, 80, 550, 30) ){
        pantalla=10; 
    } 
    
     if ( clickEnCirculo ( mouseX, mouseY, 20, 20, 40) ){
      pantalla=0;
    }
    
  } else if ( pantalla == 9 ) {
    
    if ( clickEnCirculo ( mouseX, mouseY, width/2, 470, 150) ){
      pantalla=0;
      }
    
  } else if ( pantalla == 10 ) {
    
    if ( clickEnCirculo ( mouseX, mouseY, width/2, 470, 150) ){
      pantalla=0;
      }
   
  }  else if ( pantalla == 11 ) {
    
      
      if ( clickEnCirculo ( mouseX, mouseY, 80, 500, 30) ){ 
        pantalla = 12; 
    }
    
    if ( clickEnCirculo ( mouseX, mouseY, 80, 550, 30) ){
        pantalla=13; 
    } 
    
     if ( clickEnCirculo ( mouseX, mouseY, 20, 20, 40) ){
      pantalla=0;
    }
      
  } else if ( pantalla == 12 ) {
    
    
    if ( clickEnCirculo ( mouseX, mouseY, width/2, 470, 150) ){
      pantalla=0;
      }
      
  } else if ( pantalla == 13) {
    
       if ( clickEnCirculo ( mouseX, mouseY, 80, 500, 30) ){ 
        pantalla = 14; 
    }
    
    if ( clickEnCirculo ( mouseX, mouseY, 80, 550, 30) ){
        pantalla=15; 
    } 
    
     if ( clickEnCirculo ( mouseX, mouseY, 20, 20, 40) ){
      pantalla=0;
    }
      
  } else if ( pantalla == 14 ) {
    
    if ( clickEnCirculo ( mouseX, mouseY, width/2, 470, 150) ){
      pantalla=0;
      }
    
  } else if ( pantalla == 15 ) { 
    
      if ( clickEnCirculo ( mouseX, mouseY, 80, 500, 30) ){ 
        pantalla = 16; 
    }
    
    if ( clickEnCirculo ( mouseX, mouseY, 80, 550, 30) ){
        pantalla=23; 
    } 
    
     if ( clickEnCirculo ( mouseX, mouseY, 20, 20, 40) ){
      pantalla=0;
    }
   
  } else if ( pantalla == 16 ) { 
    
      if ( clickEnCirculo ( mouseX, mouseY, 80, 500, 30) ){ 
        pantalla = 20 ; 
    } 
    
    if ( clickEnCirculo ( mouseX, mouseY, 80, 550, 30) ){
        pantalla=17; 
    } 
    
     if ( clickEnCirculo ( mouseX, mouseY, 20, 20, 40) ){
      pantalla=0;
    }
      
  } else if ( pantalla == 17 ) {
    
     if ( clickEnCirculo ( mouseX, mouseY, 80, 500, 30) ){ 
        pantalla = 19; 
    }
    
    if ( clickEnCirculo ( mouseX, mouseY, 80, 550, 30) ){
        pantalla=18; 
    } 
    
     if ( clickEnCirculo ( mouseX, mouseY, 20, 20, 40) ){
      pantalla=0;
    }
      
  } else if ( pantalla == 18 ) {
    
    if ( clickEnCirculo ( mouseX, mouseY, width/2, 470, 150) ){
      pantalla=0;
      }
     
  } else if ( pantalla == 19 ) {
    
    if ( clickEnCirculo ( mouseX, mouseY, width/2, 470, 150) ){
      pantalla=0;
      }
      
  } else if ( pantalla == 20 ) {
    
     if ( clickEnCirculo ( mouseX, mouseY, 80, 500, 30) ){ 
        pantalla = 22 ; 
    }
    
    if ( clickEnCirculo ( mouseX, mouseY, 80, 550, 30) ){
        pantalla= 21 ; 
    } 
    
     if ( clickEnCirculo ( mouseX, mouseY, 20, 20, 40) ){
      pantalla=0;
    }
    
    
  } else if ( pantalla == 21 ) {
    
     if ( clickEnCirculo ( mouseX, mouseY, width/2, 470, 150) ){
      pantalla=0;
      }
    
  } else if ( pantalla == 22 ) {
    
     if ( clickEnCirculo ( mouseX, mouseY, width/2, 470, 150) ){
      pantalla=0;
      }
    
  } else if ( pantalla == 23 ) {
  
    if ( clickEnCirculo ( mouseX, mouseY, width/2, 470, 150) ){
      pantalla=0;
      }
  
  }
    
  } 

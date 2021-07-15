/* agustin tadeo lora
 legajo: 88105/5
 TP 3 ilusion optica
 Enlace al video: https://www.youtube.com/watch?v=Rl0Dl6ycOOA
 */


void setup(){
  size(600,600);
}

void draw(){
  background(0);   
  
  for ( int a=0; a<6; a++ ){
    for(int b=0; b<6; b++){
      if(mousePressed){  //para poder controlar el fill como uno quiera.
        fill(random(255/6,mouseX),a*(255/6+mouseY),b*100);
      } else {
        fill(255);
      }
    noStroke(); // para que no se vean las lineas que hay entre los triangulos y los cuadrados
    rectMode(CENTER);  
    rect (a*(width/6)+50,b*(height/6)+25,50,50);
    triangle(a*(width/6)+0,b*(height/6)+50,a*(width/6)+100,b*(height/6)+50,a*(width/6)+50,b*(height/6)+100);
    }
  }  
}

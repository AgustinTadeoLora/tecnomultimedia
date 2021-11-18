/* 
AGUSTIN TADEO LORA
LEGAJO: 88105/5
TP 5 VIDEOJUEGO
link video explicativo: https://www.youtube.com/watch?v=QXk_jCHnkVY&ab_channel=agustinlora  
*/


Juego juego;


void setup() {
  size(800, 600);
  juego = new Juego();

}

void draw() {

  juego.actualizar();
}

void mousePressed(){
 juego.click(); 
}

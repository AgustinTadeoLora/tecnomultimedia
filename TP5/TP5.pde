/* AGUSTIN TADEO LORA
LEGAJO: 88105/5
TP 5 VIDEOJUEGO
*/



Juego juego;


void setup() {
  size(800, 600);
  juego = new Juego();

}

void draw() {
  background(255);
  juego.actualizar();
}

void mousePressed(){
 juego.click(); 
}

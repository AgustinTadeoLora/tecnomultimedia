/* AGUSTIN LORA
COMISION 3
TP FINAL
Video explicativo: https://youtu.be/73gy65_NJSg
*/


Aventura aventura;

void setup(){
size(800,600);
aventura= new Aventura();

}

void draw(){
aventura.actualizar();

}

void mousePressed(){
aventura.click();



}

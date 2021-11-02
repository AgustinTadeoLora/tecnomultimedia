class Juego {
  
  Fondo fondo;
  Obstaculo[] obstaculo;
  int cantObstaculos;
  Jugador player;
  
Juego(){
 fondo = new Fondo(); 
 cantObstaculos= 30;
 obstaculo = new Obstaculo[cantObstaculos];
 for (int i = 0; i<cantObstaculos; i++){
   obstaculo[i] = new Obstaculo();
 }
 player = new Jugador();
  
}
  
 void actualizar(){
   fondo.actualizar();
   for (int i = 0; i<cantObstaculos; i++){
   obstaculo[i].colocarObstaculo();
   player.player();
   
   
 }
 }
  
}

// NOMBRE: Agustin Lora
// DNI: 41785077
// LEGAJO:88105/5
// referencia: videojuego dragon dogma 


PFont miFuente;
PImage fondo;
PImage sello;
int r=500;


void setup(){
size(500,500);
miFuente= loadFont("MonotypeCorsiva-40.vlw");
}

void draw(){
background(0);
if(r>-2100){
  r--;
}

fondo=loadImage("titulo2.jpg");
sello=loadImage("dragon.jpg");
fill(255);
textFont(miFuente);
textAlign(CENTER);
image(fondo,125,0 + r);
image(sello,50,180 + r);
text("CAST",width/2,height/2 + r);
textSize(20);
text("-MAIN CHARACTER-",width/2,height/2+ r +40);
text(" Arisen - AGUSTIN LORA",width/2,height/2 + r +100 );
text("-SECONDARY CHARACTERS-",width/2,height/2 + r +150);
text("Dragon - SHINJI OGAWA",width/2,height/2 + r+180);
text("Adaro - ICHIRO NAGAI",width/2,height/2 + r +210);
text("Quina - YUKA KOMATSU",width/2,height/2 + r + 240);
text("Edmun - TAKAYUKI SUGOU",width/2,height/2 + r+ 270);
text("Mercedes - MIYUKI SAWASHIRO",width/2,height/2 + r+300);
text("Mason - HIROKI YASUMOTO",width/2,height/2 + r+330);
text("Selene - MEGUMI HAN",width/2,height/2 + r+ 360);
text("Madeleine - YUHKO KAIDA",width/2,height/2 + r+390);
text("Valmiro - DAISUKE HIRAKAWA",width/2,height/2 + r+420);
text("Aelenore - MARIYA ISE",width/2,height/2 + r+450);
text("Fest - CHO",width/2,height/2 + r+480);
text("Julien DAISUKE NAMIKAWA",width/2,height/2 + r+ 510);
text("Aldous - MASAKI AIZAWA",width/2,height/2 + r+540);
text("Mirabelle - CHIE NAKAMURA",width/2,height/2 + r+570);
text("Maximilian - HIROSHI TSUCHIDA",width/2,height/2 + r+600);
text("Asalam - FUMIHIKO TACHIKI",width/2,height/2 + r+630);
text("Caxton - YASUYUKI KASE",width/2,height/2 + r+660);
text("Revnard - CHIKARA OUSAKA",width/2,height/2 + r+690);
text("Seneschal - TORU OHKAWA",width/2,height/2 + r+720);
text("Fool - YASUHIKO NEMOTO",width/2,height/2 + r+750);
text("Dragonforged - RIKIYA KOYAMA",width/2,height/2 + r+780);
text("Pawns - YOJI UEDA",width/2,height/2 + r+ 810);
text("          SEIKO TAMURA",width/2,height/2 + r+840);
text("          SEIKO YOSHIDA",width/2,height/2 + r+870);
text("-Sound Desing-",width/2,height/2 + r+950);
text("Audio director - SHINYA OKADA",width/2,height/2 + r+980);
text("sound designers - RYO YOSHII",width/2,height/2 + r+1010);
text("                  KENTARON NAKASHIMA",width/2,height/2 + r+1040);
text("Sound Desing Advisor - TAKESHI KITAMURA",width/2,height/2 + r+1070);
text("Supervising dialogue - GAKU KOMURA",width/2,height/2 + r+1100);
text("Supervising Composer - TADAYOSHI MAKINO",width/2,height/2 + r+1130);
text("Technical Support - TAKUMI HIGASHI",width/2,height/2 + r+1160);
text("Audio Producer - RYO KANAYA",width/2,height/2 + r+1190);
text("- Cutscenes -",width/2,height/2 + r+1250);
text("Supervising Sound Dseinger - ARATA IWASHINA",width/2,height/2 + r+1280);
text("Sound Designer - SAYAKA YAEGASHI",width/2,height/2 + r+ 1310);
text("Supervising RE-recording Mixer - KAZUYA TAKIMOTO",width/2,height/2 + r+ 1340);
text("RE-recording Mixer - TAKASHI MIRGUCHI",width/2,height/2 + r+ 1370);
text("Studio Manager - SETSUO YAMAMOTO",width/2,height/2 + r+1400);
text("- Direction - HIDEAKI ITSUNO",width/2,height/2 + r+ 1470);
text("- Executive Producer - HIROYUKI KOBAYASHI",width/2,height/2 + r+1570);
text("- Producer - MINAE MATSUKAWA",width/2,height/2 + r+1670);
text("- Director - KENT KINOSHITA ",width/2,height/2 + r+ 1770);




}

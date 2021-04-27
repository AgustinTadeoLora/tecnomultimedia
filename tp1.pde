size(400,400);
background(255);

noStroke();

fill(255,0,0); // rojo
ellipse(200,45,60,60);//circulo superior

fill(0,255,255); // cian
ellipse(200,360,60,60);//circulo inferior del todo

fill(125,0,255); // violeta
ellipse(40,200,60,60); // circulo izquierdo medio

fill(125,255,0); // lima
ellipse(360,200,60,60); //circulo derecho medio

fill(255,0,125); // fucsia
ellipse(125,70,60,60); // primer circulo izquierdo superior medio

fill(255,0,255); // magenta
ellipse(60,120,60,60); // segundo circulo izquierdo superior medio

fill(255,125,0); // naranja
ellipse(275,70,60,60); // primer circulo interior superior derecho

fill(255,255,0); // amarillo
ellipse(335,120,60,60); // segundo circulo interior superior derecho

fill(0,255,0); // verde
ellipse(335,290,60,60); // primer circulo interior inferior derecho

fill(0,255,125); // verde cian
ellipse(275,335,60,60); // segundo circulo interior inferior derecho

fill(0,125,255); // azur o ceruleo
ellipse(125,330,60,60); // primer circulo interior inferior izquierdo

fill(0,0,255); //azul
ellipse(60,285,60,60); //segundo circulo interior inferior izquierdo

fill(0);
triangle(200,320,100,140,300,140);
fill(255);
stroke(0);
triangle(200,90,300,270,100,270);

fill(0);
textSize(15);
text("Rojo",183,48);
text("cian",184,363);
text("violeta",17,203);
text("lima",346,205);
text("fucsia",105,75);
textSize(13);
text("magenta",33,123);
textSize(15);
text("naranja",248,72);
textSize(13);
text("amarillo",312,122);
textSize(15);  
text("verde",316,292);
text("verde",255,333);
text("cian",260,343);
text("azur",110,333);
fill(255);
text("azul",47,287);

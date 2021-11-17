class Textos {
  float tam,x,y;
  String label;

  Textos(String label_, float x_, float y_, float tam_) {
    x=x_;
    y=y_;
    label= label_;
    tam=tam_;
  }

  void escribir() {
    push();

    textAlign(CENTER);
    textSize(tam);
    text(label, x, y);
    pop();

  }
}

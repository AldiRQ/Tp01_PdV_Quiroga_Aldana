class Comida extends Posicion {
  float r;
  color c;
  
  Comida(float r_) {
    super(random(r_, width-r_), random(r_, height-r_));
    r = r_;
    nuevaPosicion();
  }
  
  void mostrar() {
    fill(c);
    ellipse(x, y, r*2, r*2);
  }
  
  void nuevaPosicion() {
    x = random(r, width-r);
    y = random(r, height-r);
    c = color(random(255), random(255), random(255));
  }
}

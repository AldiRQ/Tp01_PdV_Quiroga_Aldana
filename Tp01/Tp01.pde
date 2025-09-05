Pelota bola;

void setup() {
  size(700, 650);
  bola = new Pelota(width/2, height/2, 20, 5);
}

void draw() {
  background(#050505);
  bola.mostrar();
  bola.mover();
}

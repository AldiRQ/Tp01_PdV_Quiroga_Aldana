// TP Ejemplo

Pelota bola;
Comida comida;

public void setup() {
  size(700, 650);
  bola = new Pelota(width/2, height/2, 20, 5);
  comida = new Comida(10);
}

public void draw() {
  background(#050505);
  
  bola.mostrar();
  bola.mover();
  comida.mostrar();
  
  // detectar colisión
  if (dist(bola.x, bola.y, comida.x, comida.y) < bola.radio + comida.radCom) {
    bola.cambiarColor(comida.c); // cambia color y crece
    comida.nuevaPosicion();
  }
}

// ------------------- CONTROL DE TECLAS ----------------
public void keyPressed() {
  if (key == 'w' || key == 'W') bola.arriba = true;
  if (key == 's' || key == 'S') bola.abajo = true;
  if (key == 'a' || key == 'A') bola.izquierda = true;
  if (key == 'd' || key == 'D') bola.derecha = true;
}

public void keyReleased() {
  if (key == 'w' || key == 'W') bola.arriba = false;
  if (key == 's' || key == 'S') bola.abajo = false;
  if (key == 'a' || key == 'A') bola.izquierda = false;
  if (key == 'd' || key == 'D') bola.derecha = false;
}

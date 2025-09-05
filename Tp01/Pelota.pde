class Pelota extends Posicion {
  float r, vel;
  boolean arriba, abajo, izquierda, derecha;
  color original;   // color original
  color actual;     // color actual
  int tiempoCambio; // tiempo en que cambió de color
  
  Pelota(float x_, float y_, float r_, float vel_) {
    super(x_, y_);
    r = r_;
    vel = vel_;
    original = color(#FF2121);
    actual = original;
    tiempoCambio = -1; // sin cambio activo
  }
  
  void mostrar() {
    // si ya pasó 1 segundo desde el cambio, volver al original
    if (tiempoCambio > 0 && millis() - tiempoCambio > 1000) {
      actual = original;
      tiempoCambio = -1;
    }
    
    fill(actual);
    ellipse(x, y, r*2, r*2);
  }
  
  void mover() {
    if (arriba) y -= vel;
    if (abajo) y += vel;
    if (izquierda) x -= vel;
    if (derecha) x += vel;
    
    // límites del lienzo
    x = constrain(x, r, width-r);
    y = constrain(y, r, height-r);
  }
  
  void cambiarColor(color nuevo) {
    actual = nuevo;
    tiempoCambio = millis(); // guarda el momento del cambio
    
    // crecer cada vez que come
    r += 2; // podés cambiar el valor para que crezca más o menos
  }
}

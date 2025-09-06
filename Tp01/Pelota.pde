class Pelota extends Posicion {
  private float radio, vel;
  private boolean arriba, abajo, izquierda, derecha;
  private color original;   // color original
  private color actual;     // color actual
  private int tiempoCambio; // tiempo en que cambió de color
  
  public Pelota(float x, float y, float rad, float velo) {
    super(x, y);
    radio = rad;
    vel = velo;
    original = color(#FF2121);
    actual = original;
    tiempoCambio = -1; // sin cambio activo
  }
  
  public void mostrar() {
    // si ya pasó 1 segundo desde el cambio, volver al original
    if (tiempoCambio > 0 && millis() - tiempoCambio > 1000) {
      actual = original;
      tiempoCambio = -1;
    }
    
    fill(actual);
    ellipse(x, y, radio*2, radio*2);
  }
  
  public void mover() {
    if (arriba) y -= vel;
    if (abajo) y += vel;
    if (izquierda) x -= vel;
    if (derecha) x += vel;
    
    // límites del lienzo
    x = constrain(x, radio, width-radio);
    y = constrain(y, radio, height-radio);
  }
  
  public void cambiarColor(color nuevo) {
    actual = nuevo;
    tiempoCambio = millis(); // guarda el momento del cambio
    
    // crecer cada vez que come
    radio += 2; // podés cambiar el valor para que crezca más o menos
  }
}

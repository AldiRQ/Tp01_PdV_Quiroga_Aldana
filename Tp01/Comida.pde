class Comida extends Posicion {
  private float radCom;
  private color c;
  
  public Comida(float r) {
    super(random(r, width-r), random(r, height-r));
    radCom = r;
    nuevaPosicion();
  }
  
  public void mostrar() {
    fill(c);
    ellipse(x, y, radCom*2, radCom*2);
  }
  
  public void nuevaPosicion() {
    x = random(radCom, width-radCom);
    y = random(radCom, height-radCom);
    c = color(random(255), random(255), random(255));
  }
}

class Pelota {
  float x, y, r, vel;
  
  Pelota(float x_, float y_, float r_, float vel_) {
    x = x_;
    y = y_;
    r = r_;
    vel = vel_;
  }
  
  void mostrar() {
    fill(#FF2121);
    ellipse(x, y, r*2, r*2);
  }
  
  void mover() {
    if (keyPressed) {
      if (key == 'w' || key == 'W') y -= vel;
      if (key == 's' || key == 'S') y += vel;
      if (key == 'a' || key == 'A') x -= vel;
      if (key == 'd' || key == 'D') x += vel;
    }
    
    // límites del lienzo
    x = constrain(x, r, width-r);
    y = constrain(y, r, height-r);
  }
}

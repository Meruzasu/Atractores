class Bicho {

  private int x, y, tam, destX, destY, diferenciaX, pasoX, puntoActualX, diferenciaY, pasoY, puntoActualY;
  private int cantDePasos = 2;
  private float locCount = 0;

  Bicho(int x, int y, int tam) {
    this.x = x;
    this.y = y;
    this.tam = tam;
  }

  void update2(int destX, int destY) {

    diferenciaX = destX - x;
    pasoX = diferenciaX/cantDePasos;

    diferenciaY = destY - x;
    pasoY = diferenciaY/cantDePasos;

    if (diferenciaX>0) {
      if (x<destX) {
        x = x+pasoX;
      }
      else {
        x = destX;
      }
    }
    else if (diferenciaX<=0) {
      if (x>destX) {
        x = x+pasoX;
      }
      else {
        x = destX;
      }
    }

    if (diferenciaY>0) {
      if (x<destY) {
        y = y+pasoY;
      }
      else {
        y = destY;
      }
    }
    else if (diferenciaY<=0) {
      if (y>destY) {
        y = y+pasoY;
      }
      else {
        y = destY;
      }
    }
  }

void update(int x, int y){
this.x = x; 
this.y = y;
}

  void dibujar() {
    pushMatrix();
    stroke(255);
    translate(x, y);
    rotateZ(locCount%TWO_PI);
    rect(0, 0, tam, tam);
    popMatrix();
    locCount+=0.1;
  }
}






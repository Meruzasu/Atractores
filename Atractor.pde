class Atractor{
  private int x, y, destx, desty, tipo, id;
  private Bicho bicho;
  
  Atractor(int x, int y, int id){
    this.x = x;
    this.y = y;
    this.id = id;
    
    bicho = new Bicho(0, 0, 20);
  }
  
  void setUb(int x, int y){
    this.x = x;
    this.y = y;
    text(id, x, y);
    bicho.update(x, y);
    bicho.dibujar();
  }
  
  PVector getUb(){
    PVector ubicacion = new PVector(x, y);
    return ubicacion;
  }
}

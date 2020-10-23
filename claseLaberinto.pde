class Laberinto {
  Celda [][] celdas;
  int ancho;
  int alto;


  Laberinto(int _ancho, int _alto) {
    ancho =_ancho;
    alto =_alto;

    celdas=new Celda[ancho][alto];
    for (int i = 0; i<ancho; i++) {
      for (int j = 0; j<alto; j++) {
        celdas[i][j] = new Celda ();
      }
    }
  }
  
  boolean mueve(int x,int y, int prevX, int prevY){
    if (x<0 ||x>=ancho || 
    y <0 || y>=alto ||
    celdas[x][y].Visita==true){
     
      //mal movimiento
      
      return false;
    } else {
      // puedo moverme
      celdas [x][y].Visita=true;
     if (x> prevX) celdas [prevX][prevY].muroDerecha = false;
      if (x< prevX) celdas [x][y].muroDerecha = false;
       if (y< prevY) celdas [prevX][prevY].muroArriba = false;
      if (y> prevY) celdas [x][y].muroArriba = false;
    
      
      //4 dirreciones (vectores)
     Vector[]dirs = new Vector [4];
     dirs[0] = new Vector(0,-1); //arriba
      dirs[1] = new Vector(1,0); //derecha
      dirs[2] = new Vector(0,1); //abajo
      dirs[3] = new Vector(-1,0); //izquierda
      
      for(int mezcla = 0;mezcla<10;mezcla++){
    
        int numero = floor(random(3));
     Vector tmp;
     tmp = dirs[numero];
     dirs [numero] = dirs [numero+1];
     dirs[numero+1] = tmp;
      }
      
      if (
      mueve(x+dirs[0].x, y+dirs[0].y, x,y)==false &&
    mueve(x+dirs[1].x, y+dirs[1].y, x,y)==false &&
    mueve(x+dirs[2].x, y+dirs[2].y, x,y)==false &&
    mueve(x+dirs[3].x, y+dirs[3].y, x,y)==false 
    )
      {
        return false;
        }
        return false;
    }
  
  }
  
  
  
  
void dibuja(){
  translate(15,15);
  stroke(0);
  strokeWeight(3);
  for (int i = 0; i<ancho; i++) {
      for (int j = 0; j<alto; j++) {
      pushMatrix();
      translate(i*15,j*15);
        celdas[i][j].dibuja();
        popMatrix();
      }
  }
line (0,0,0,15*alto);
line(0,15*alto,15*ancho,15*alto);
}
}

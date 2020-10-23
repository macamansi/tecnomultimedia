class Jugador{
int x,y;

Laberinto mapa;

Jugador(int _x, int _y, Laberinto _mapa){
 x =_x;
 y = _y;
 mapa =_mapa;
 
}

void mueve(int muevex, int muevey){
int nuevax = x+muevex;
int nuevay = y+muevey;

if(nuevax>=0 && nuevax<mapa.ancho &&
nuevay>=0 && nuevay<mapa.alto) {
 
  boolean puedepasar = false;
  if (muevex ==1 && mapa.celdas[x][y].muroDerecha==false) puedepasar = true;
  if (muevey ==-1 && mapa.celdas[x][y].muroArriba==false) puedepasar = true;
  if (muevex ==-1 && mapa.celdas[x-1][y].muroDerecha==false) puedepasar = true;
  if (muevey ==1 && mapa.celdas[x][y+1].muroArriba==false) puedepasar = true;
  
  if (puedepasar==true){
  x = nuevax;
  y = nuevay;
  }
}
}


void dibuja(){
 noStroke();
 fill(0,0,255);
 ellipse(x*15+8,y*15+8,12,12);



}

}

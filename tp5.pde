//Aljuego lo pondría después de la pantalla 13

Laberinto maze;
Jugador player;
PImage bg;

void setup(){
 size(800, 600);
 maze = new Laberinto (30,30);
 
 maze.mueve(0,0,0,0);
 maze.celdas[0][0].muroArriba = false;
 maze.celdas[29][29].muroDerecha = false;

player = new Jugador(0,0,maze);
bg= loadImage("laberinto.png");

}

void draw(){
 background(bg);
 maze.dibuja();
player.dibuja();
    
}





 
void keyPressed(){
 switch(keyCode){
   case UP:
   player.mueve(0,-1);
   break;
   case DOWN:
  player.mueve(0,1);
   break;
   case LEFT:
   player.mueve(-1,0);
   break;
   case RIGHT:
   player.mueve(1,0);
   break;
}
}

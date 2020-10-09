

int tamCelda, tamFila;
PImage personaje;
int estado = 1;
int cantImgs = 20;
int posicion;
int pantalla;
int tam;

void setup(){
  size(800,600);
}

void draw(){
 // float aux = map( mouseX, 0, width, 0, 255 );  
  //background( aux );  

  for(int i = 1; i <= cantImgs; i++){
    if(estado == i){
      personaje = loadImage("jonas"+i+".png");
      image(personaje, 0, 0);
      
      if (estado==1){
      fill(255);
  textSize (50);
  textAlign (CENTER);
  text ("", posicion+width/2, posicion+height/2); 
 fill(0, 180);
  
    fill(255);
    textSize(35);
     text ("INICIO",posicion+150,posicion+565);
     text( "CRÉDITOS",posicion+647,posicion+565);  
   }
   else  if (estado==20){
       textAlign (CENTER);
          rectMode (CORNER);
image (personaje,0,0);
               fill (255,0,0);
         rect(50,50,50,50,7); 
         fill(255);
            textSize(30);
            text("<-", 73,85);
            textSize(10);
         text("(presionar tleca R)",120,30);
     }
 
 }}
      
    }

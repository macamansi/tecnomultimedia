class Juego {
Walls[] paredes = new Walls[27]; //Muros del laberinto
Button[] botones = new Button[4]; //Botones para volver
Time tiempo; 
boolean gameOver = false; 
boolean gameWinner = false; 
int squareX = 158; //Posición X del cuadrado
int squareY = 280; //Posicion Y del cuadrado
int squareP; //Posición del cuadrado



void dibujarJuego(){
 botones[0] = new Button();
  botones[1] = new Button(2,548,50,50,255,"Volver");
  botones[2] = new Button(748,548,50,50,255,"Volver");
  botones[3] = new Button(748,2,50,50,255,"Volver");
  
  
  tiempo = new Time(millis(), 60000, (width/2)-(35),(height/2)+(10), 29, 0);
 
  //  las paredes 
  paredes[0] = new Walls(290, 225, 25, 125, color(255,255,0), true);
  paredes[1] = new Walls(315, 225, 255, 25, color(255,255,0), true);
  paredes[2] = new Walls(545, 250, 25, 125, color(255,255,0), true);
  paredes[3] = new Walls(290, 350, 255, 25, color(255,255,0), true);
  
  paredes[4] = new Walls(315, 250, 200, 30, color(0), false);
  paredes[5] = new Walls(315, 280, 30, 70, color(0), false);
  paredes[6] = new Walls(345, 320, 200, 30, color(0), false);
  paredes[7] = new Walls(515, 250, 30, 70, color(0), false);
  
  paredes[8] = new Walls(260,195,30, 210, color(0), false);
  paredes[9] = new Walls(315,195,255, 30, color(0), false);
  paredes[10] = new Walls(570,195,30, 210, color(0), false);
  paredes[11] = new Walls(290,375,250, 30, color(0), false);
  
  paredes[12] = new Walls(0,60,30, 480, color(0), false);
  paredes[13] = new Walls(60,0,680, 30, color(0), false);
  paredes[14] = new Walls(770,60,30, 480, color(0), false);
  paredes[15] = new Walls(60,570,680, 30, color(0), false);
  
  paredes[16] = new Walls(60,60,30, 240, color(0), false);
  paredes[17] = new Walls(60,340,30, 200, color(0), false);
  
  paredes[18] = new Walls(710,60,30, 240, color(0), false);
  paredes[19] = new Walls(710,340,30, 200, color(0), false);
  
  paredes[20] = new Walls(90,60,620, 30, color(0), false);
  paredes[21] = new Walls(90,510,620, 30, color(0), false);
  
  paredes[22] = new Walls(650,120,30, 360, color(0), false);
  paredes[23] = new Walls(120,120,30, 360, color(0), false);
  
  paredes[24] = new Walls(180,120,470, 30, color(0), false);
  
  paredes[25] = new Walls(180,140,30, 280, color(0), false);
  paredes[26] = new Walls(150,450,470, 30, color(0), false); 
  
   
 
     switch(squareP){
      
        case 1: 
           squareX = 100;
           squareY = 260;
           break;
           
        case 2: 
           squareX = 690;
           squareY = 100;
           break;
        
        case 3:
            squareX = 630;
            squareY = 490;
            break;
        
        case 4:
            squareX = 410;
            squareY = 100;
            break;
       
     }
    
      // Calculamos la posición del Mouse para saber si está encima del cuadrado
      if((mouseX+10) > squareX && (mouseX+10) < squareX+15 && (mouseY+10) > squareY && (mouseY+10) < squareY+15  ||
         (mouseX+10) > squareX && (mouseX+10) < squareX+15 && (mouseY-10) > squareY && (mouseY-10) < squareY+15  ||
         (mouseX-10) > squareX && (mouseX-10) < squareX+15 && (mouseY-10) > squareY && (mouseY-10) < squareY+15  ||
         (mouseX-10) > squareX && (mouseX-10) < squareX+15 && (mouseY+10) > squareY && (mouseY+10) < squareY+15  
      ){
        
        // Si se encuentra encima del cuadrado, reniciamos el contador.
        tiempo.setTime(millis());
        
      }
      
    
    fill(255);
    rect(squareX, squareY, 15,15);
    
   
    
    
    fill(255);
    rect(335,269,200,50);
    tiempo.calcule();
    
   
   
    for(int i = 0; i < paredes.length; i++){
    paredes[i].show();
    }
    
   
  }

  void dibujarJugador(){
    fill(25,20,250);
    noStroke();
    ellipse(mouseX-10, mouseY-10, 15,15);
}
}

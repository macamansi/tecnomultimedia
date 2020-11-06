class Button{
  Time tiempo; 
boolean gameOver = false; 
boolean gameWinner = false; 
    int posX, posY, sizeX, sizeY;
    color fll;
    String texte;
  
    Button(){
      posX = 2;
      posY = 2;
      sizeX = 50;
      sizeY = 50;
      fll = color(255);
      texte = "Volver"; 
    }
    
    Button(int px, int py, int sx, int sy, color fl, String tx){
      posX = px;
      posY = py;
      sizeX = sx;
      sizeY = sy;
      fll = color(fl);
      texte = tx; 
    }
    
   
    void show(){
      
     fill(fll);
     rect(posX, posY, sizeX, sizeY, 3);
     fill(0);
     textSize(11);
     text(texte,posX+9,posY+30);
     this.clicker(); 
      
    }

   void clicker(){
  
     if(mousePressed){
      
        if(mouseX > posX && mouseX < posX+sizeX && mouseY > posY && mouseY < posY+sizeY){
           //Si se clicla, ponemos los boleanos en falso y reniciamos el tiempo (Empieza la partida de nuevo) 
           gameOver = false;
           gameWinner = false;
           tiempo.setTime(millis());
        }
     }
       
   }   
}

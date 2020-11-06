class Walls{
  boolean gameOver = false;
  boolean gameWinner = false;
   int posX, posY, sizeX, sizeY;
   color fil;
   int maxX, maxY;
   boolean bad;
   Button[] botones = new Button[4]; //Botones para volver
Time tiempo; 
    Walls(){
     
       posX = 0;
       posY = 0;
       sizeX = 0;
       sizeY = 0;
       fil = 0;
       bad = false;
     
    }
   
    Walls(int px, int py, int sx, int sy, color fl, boolean bd){
     
     posX = px;
     posY = py;
     sizeX = sx;
     sizeY = sy;
     fil = fl;
     bad = bd;
     
    } 
    
   
    void show(){
     
     fill(fil);
     rect(posX, posY, sizeX, sizeY);
     this.cursor(); 
     
    }

    void cursor(){
     
      if((mouseX+10) > posX && (mouseX+10) < posX+sizeX && (mouseY+10) > posY && (mouseY+10) < posY+sizeY  ||
         (mouseX+10) > posX && (mouseX+10) < posX+sizeX && (mouseY-10) > posY && (mouseY-10) < posY+sizeY  ||
         (mouseX-10) > posX && (mouseX-10) < posX+sizeX && (mouseY-10) > posY && (mouseY-10) < posY+sizeY  ||
         (mouseX-10) > posX && (mouseX-10) < posX+sizeX && (mouseY+10) > posY && (mouseY+10) < posY+sizeY  
      ){
        
        
        
        if(!bad){
        gameOver = true; 
            background(0);
    
    for(int i = 0; i < botones.length; i++){
       botones[i].show(); 
    }
    
    fill(255);
    textSize(72);
    text("GAME", 300, 290);
    text("OVER", 315, 360);
        }else{
            
            if(tiempo.getTime() >= 30){
            gameWinner = true; 
             background(0);
  
  for(int i = 0; i < botones.length; i++){
       botones[i].show(); 
    }
    
    fill(255);
    textSize(56);
    text("Has ganado", 275, 350);
 
            }else{
            gameOver = true; 
            }
            
        }
      }
      
    }
  
  
  
  
  
}

class Time{
  boolean gameOver = false;
  int start, regresive, posX, posY, size, fll;
  int countM, countS, countMS;
  String countMs, countSs, countMSs;

   Time(){
       start = millis();
       regresive = 60000;
       posX = 50;
       posY = 50;
       size = 29;
       fll = 0;
   }
   
   Time(int st, int rg, int px, int py, int sz, color fl){
    
       start = st;
       regresive = rg;
       posX = px;
       posY = py;
       size = sz;
       fll = fl;
     
   }
   
  
   int getTime(){
       int timer = ((regresive-(millis()-start))/1000);
       return timer; 
    }
   
   
   void calcule(){
    
      countS = floor(((regresive-(millis()-start))/1000)%60);
      countSs = countS <= 9 ? "0"+ str(countS) : str(countS);  
      countM = floor(((regresive-(millis()-start))/1000)/60);
      countMs = countM <= 9 ? "0"+ str(countM) : str(countM);  
      countMS = floor(((regresive-(millis()-start))/10)%100);
   
      countMSs = countMS <= 9 ? "0"+ str(countMS) : str(countMS);
      this.show(); 
    
   
    if((regresive-(millis()-start)) <= 0){ gameOver = true; }
     
   }
 
   void show(){
 
     textSize(size);
     fill(fll);
     text(countMs+":"+countSs+":"+countMSs,posX, posY);
 
     
   }
 
   void setTime(int tm){
      start = tm; 
   }
  
}

class Celda {
 boolean muroArriba;
 boolean muroDerecha;
 boolean Visita;
 
 Celda(){
 muroArriba = true;
 muroDerecha = true;
 Visita = false;
 }
 
 void dibuja(){
   if (muroArriba){
   line(0,0,15,0);
   }
   if(muroDerecha){
     line(15,0,15,15);
 }
 }}

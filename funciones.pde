//NO PUDE SOLUCIONAR LOS BOTONES//

int [][][] botones = new int [20][2][4];



void mousePressed(int pantallaActual, int pantallaSiguiente) {
  if (pantalla==pantallaActual) {

    if (((mouseX>botones[pantallaActual][0][1]) && (mouseX<botones[pantallaActual][0][2])) && ((mouseY>botones[pantallaActual][0][3]) && (mouseY<botones[pantallaActual][0][4]))) { 

      pantalla= botones[pantallaSiguiente][0][0];
    } else if (botones[pantallaActual][1].length >0) {
      if (((mouseX >botones[pantallaActual][1][1]) && (mouseX<botones[pantallaActual][1][2])) && ((mouseY>botones[pantallaActual][1][3]) && (mouseY<botones[pantallaActual][1][4]))) {
        pantalla= botones[pantallaSiguiente][1][0];
      }
    }
  }

void cargarBotones() {

int [] botones1 = {50,250,512,587};
int [] botones2 ={550,750,475,625};


botones[1][0] = botones1;
botones[1][1]=botones2;
botones[6][0] = botones1;
botones[6][1]=botones2;
botones[9][0] = botones1;
botones[9][1]=botones2;
botones[14][0] = botones1;
botones[14][1]=botones2;
botones[18][0] = botones1;
botones[18][1]=botones2;
}

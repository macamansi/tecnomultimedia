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


botones[1][0][0] = 50;
botones[1][0][1] = 250;
botones [1][0][2] = 512;
botones[1][0][3] = 587;

botones[1][1][0] = 550;
botones[1][1][1] = 750;
botones [1][1][2] = 475;
botones[1][1][3] = 625;
}

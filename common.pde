void init(){
  pushStyle();
  bg0 = loadImage("pantalla0.png");
  background(bg0);
  textSize(25);
  fill (0);
  text("UNA - Informática Aplicada 1", 180,100);
  textSize(45);
  text("Catedra Bedoian", 190,153);
  textSize(15);
  text("Alumna: Giselle Llamas", 228,226);
  text("Haga click para empezar.", 228,256);
  popStyle();
}
  
void drawPantalla0(){
  pushStyle();
  bg1 = loadImage("pantalla1.png");
  background(bg1);
  textSize(20);
  fill(255);
  text("¡Buen día! ¿Qué cereales vas a querer", 82, 335);
  text("para desayunar?", 82, 370);
  popStyle();
}

void drawPantalla1(){
  pushStyle();
  bg2 = loadImage("pantalla2.png");
  cur = loadImage("cursor.png");
  background(bg2);
  //background(35, 0, 60);
  textSize(20);
  fill(255);
  text("¡Elige tus cereales!", 200, 35);
  stroke (255);
  fill(255,0,0,0);
  ellipse(mouseX,mouseY,radio1,radio1);
  imageMode(CENTER);
  image(cur, mouseX, mouseY);
  radio1 = 75;
  opcDerX = 150;
  opcDerY = 180;
  opcIzqX = 450;
  opcIzqY = 180;
  ellipse(opcDerX,opcDerY,radio1*2,radio1*2);
  ellipse(opcIzqX,opcIzqY,radio1*2,radio1*2);
  popStyle();
  valorDistOD = dist(mouseX, mouseY, opcDerX, opcDerY)-35; //Resto 35 por radio de mouse
  valorDistOI = dist(mouseX, mouseY, opcIzqX, opcIzqY)-35; //Resto 35 por radio de mouse
  }
  
  void drawPantalla2(){
  pushStyle();
  bg3 = loadImage("pantalla3.png");
  background(bg3);
  textSize(20);
  fill(200);
  text("¡Que rico! ¡Hora de ir al trabajo!", 168, 325);
  fill(255,0,0);
  text("Click para continuar", 310, 355);
  popStyle();
}

void drawPantalla2b(){
  millisStart = millis(); // reseteo el valor de los millis
  pushStyle();
  bg4 = loadImage("pantalla4.png");
  background(bg4);
  textSize(20);
  fill(200);
  text("¡Espero tener una buena jornada!", 132, 335);
  popStyle();
}

void drawPantalla3(){
  millisStart = millis();
  pushStyle();
  bg5 = loadImage("pantalla5.png");
  background(bg5);
  textSize(20);
  fill(200);
  text("¡Buenas! ¡Ya hay alguien", 200, 325);
  text("esperando a ser atendido!", 200, 360);
  textSize(15);
  fill(255,0,0);
  text("Click cuando quieras trabajar", 220, 385);
  popStyle();
}

void checkCereal(){
  if (cereal == 1){
    drawPantalla4a();
    println ("Cereal: " + cereal);
  }else{
    println ("Cereal: " + cereal);
    drawPantalla4b();
  }
} 

void drawPantalla4a(){
  millisStart = millis();
  pantalla = 4;
  pushStyle();
  bg6 = loadImage("pantalla6.png");
  background(bg6);
  textSize(20);
  fill(200);
  text("¡Hola! Quisiera un papel", 200, 325);
  text("de buena calidad, por favor.", 200, 360);
  popStyle();
}

void drawPantalla4b(){
  millisStart = millis();
  pantalla = 4;
  pushStyle();
  bg7 = loadImage("pantalla7.png");
  background(bg7);
  textSize(20);
  fill(200);
  text("¡Uff! >:( ¡Cuanto tardaste... ", 200, 325);
  text("ya, dame un papel de dibujo!", 200, 360);
  popStyle();
}

void drawPantalla5(){
  pushStyle();
  bg8 = loadImage("pantalla8.png");
  cur = loadImage("cursor.png");
  background(bg8);
  textSize(20);
  fill(255);
  text("¿Que papel le damos?", 180, 35);
  popStyle();
  fill(255,0,0);
  ellipse(mouseX,mouseY,radio1,radio1);
  imageMode(CENTER);
  image(cur, mouseX, mouseY);
  radio1 = 75;
  opcDerX = 150;
  opcDerY = 180;
  opcIzqX = 450;
  opcIzqY = 180;
  fill(255,0,0,0);
  ellipse(opcDerX,opcDerY,radio1*2,radio1*2);
  ellipse(opcIzqX,opcIzqY,radio1*2,radio1*2);
  valorDistOD2 = dist(mouseX, mouseY, opcDerX, opcDerY)-35; //Resto 35 por radio de mouse
  valorDistOI2 = dist(mouseX, mouseY, opcIzqX, opcIzqY)-35; //Resto 35 por radio de mouse 
  }

void drawPantalla6a(){
  pushStyle();
  bg9 = loadImage("pantalla9.png");
  background(bg9);
  textSize(20);
  fill(200);
  text("¡Pucha! Que mala atención, mira,", 200, 325);
  text("me dieron unas hojas feas. :(", 200, 360);
  fill(255,0,0);
  text("Click para continuar.", 220, 385);
  popStyle();
}

void drawPantalla6b(){
  pushStyle();
  bg10 = loadImage("pantalla10.png");
  background(bg10);
  textSize(20);
  fill(200);
  text("¡Wow! Estoy impresionado, les", 200, 325);
  text("felicito por la atención.", 200, 360);
  fill(255,0,0);
  text("Click para continuar.", 220, 385);
  popStyle();
}

void checkPapel(){
  println ("Se triggerea la funcion check papel");
  if (papel == 1){
     println ("Se dibuja la pantalla 7a");
    drawPantalla7a();
  }else if (papel == 2){
    println ("Se dibuja la pantalla 7b");
    drawPantalla7b();
  }
}

void drawPantalla7a(){
  pushStyle();
  bg11 = loadImage("pantalla11.png");
  background(bg11);
  textSize(20);
  fill(200);
  text("¡Ey! ¡Si seguís así vamos", 200, 325);
  text("a tener que despedirte!", 200, 360);
  popStyle();
  pantalla = 6;
  millisStart = millis(); // reseteo el valor de los millis
  println ("Reseteo millis start a: " + millisStart);
}

void drawPantalla7b(){
  pushStyle();
  bg12 = loadImage("pantalla12.png");
  background(bg12);
  textSize(20);
  fill(200);
  text("¡Muy bien! ¡Si seguís así", 200, 325);
  text("pronto va a venir un ascenso!", 200, 360);
  popStyle();
  pantalla = 6;
  millisStart = millis(); // reseteo el valor de los millis
  println ("Reseteo millis start a: " + millisStart);
}

void drawPantalla8(){
  pushStyle();
  bg13 = loadImage("pantalla13.png");
  background(bg13);
  textSize(20);
  fill(200);
  text("¡Al fin, vuelvo a casa!", 132, 345);
  text("¡Qué día tuve!", 132, 365);
  popStyle();
  pantalla = 7;
  millisStart = millis(); // reseteo el valor de los millis
  println ("Reseteo millis start a: " + millisStart);
}

void drawPantalla9(){
  pushStyle();
  bg14 = loadImage("pantalla14.png");
  background(bg14);
  textSize(20);
  fill(200);
  text("¡Bienvenido! Hey, ¿Me darías", 132, 345);
  text("una mano con algo de esto?", 132, 365);
  popStyle();
  pantalla = 8;
  millisStart = millis(); // reseteo el valor de los millis
  println ("Reseteo millis start a: " + millisStart);
}

void drawPantalla10(){
  pushStyle();
  bg15 = loadImage("pantalla15.png");
  cur = loadImage("cursor.png");
  background(bg15);
  textSize(20);
  fill(0);
  text("¿A hacer qué ayudamos?:", 180, 35);
  popStyle();
  fill(255,0,0);
  ellipse(mouseX,mouseY,radio1,radio1);
  imageMode(CENTER);
  image(cur, mouseX, mouseY);
  radio1 = 75;
  opcDerX = 150;
  opcDerY = 180;
  opcIzqX = 450;
  opcIzqY = 180;
  fill(255,0,0,0);
  ellipse(opcDerX,opcDerY,radio1*2,radio1*2);
  ellipse(opcIzqX,opcIzqY,radio1*2,radio1*2);
  valorDistOD3 = dist(mouseX, mouseY, opcDerX, opcDerY)-35; //Resto 35 por radio de mouse
  valorDistOI3 = dist(mouseX, mouseY, opcIzqX, opcIzqY)-35; //Resto 35 por radio de mouse
}

void drawPantalla11a(){
  pushStyle();
  bg16 = loadImage("pantalla16.png");
  background(bg16);
  textSize(20);
  fill(200);
  text("¡Vamos chico! ¡Hora de pasear!", 168, 325);
  fill(255,0,0);
  text("Click para continuar", 310, 355);
  popStyle();
}

void drawPantalla11b(){
  pushStyle();
  bg17 = loadImage("pantalla17.png");
  background(bg17);
  textSize(20);
  fill(200);
  text("¡Sí querida, ahí pongo la mesa!", 168, 325);
  fill(255,0,0);
  text("Click para continuar", 310, 355);
  popStyle();
}

int randomSignum() {
  //return (int) random(1,2) * 2 - 1;
  return (int) random(1,3); // forzando mal final
}

void checkFinal(){
if (opcFinal == 1){
  println ("se invoca a random");
  int randomResult = randomSignum();
  if (randomResult == 1){
  println ("esta todo bien, random dio 1");
  drawPantalla14();
  millisStart = millis();
  pantalla = 10;
  }else{
    println ("esta todo mal te solidarizaron ameo");
    drawPantalla13();
    pantalla = 11;
  }
}if (opcFinal == 2){
 println ("esta todo bien");
 drawPantalla14();
 millisStart = millis();
 pantalla = 10;
}
}

void drawPantalla13(){
  pushStyle();
  bg18 = loadImage("pantalla18.png");
  background(bg18);
  textSize(20);
  fill(200);
  text("¡Te solidarizaron violentamente!", 128, 335);
  fill(255,0,0);
  text("Click para empezar de nuevo.", 128, 365);
  popStyle();
}

void drawPantalla12(){
  pushStyle();
  bg19 = loadImage("pantalla19.png");
  background(bg19);
  textSize(20);
  fill(200);
  text("¡Llegaste bien a tu casa!", 168, 325);
  popStyle();
}

void drawPantalla14(){
  pushStyle();
  bg20 = loadImage("pantalla20.png");
  background(bg20);
  textSize(20);
  fill(200);
  text("Nada mejor que una cena en familia", 82, 325);
  textSize(40);
  text("¡Fin!", 422, 365);
  popStyle();
}

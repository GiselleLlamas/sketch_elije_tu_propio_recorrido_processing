/*
UNA IA1- Experiencia Interactiva
 por Giselle Llamas
 Fecha: Junio 2020
 Resumen: Ejercicio de experiencia interactiva con seleccion de opciones usando 
 colisiones y condicionales
 */
// Creo estas variables globales que luego voy a referenciar en el programa
int pantalla = 0;
int millisStart;
int transicion10segs = 10000; //para esperar 5 segundos
int transicion5segs = 5000; //para esperar 5 segundos
int transicion3segs = 3000; //para esperar 5 segundos
int transicion1segs = 1000; //para esperar 1 segundo
int cereal;
int papel;
int opcFinal;
float opcDerX,opcDerY,opcIzqX,opcIzqY;//inicializo las variables que generan las opciones
float valorDistOD,valorDistOI,valorDistOD2,valorDistOI2,valorDistOD3,valorDistOI3;//inicializo las variables para medir distancia a las opc
float radio1;
PImage cur,bg0,bg1,bg2,bg3,bg4,bg5,bg6,bg7,bg8,bg9,bg10,bg11,bg12,bg13,bg14,bg15,bg16,bg17,bg18,bg19,bg20;
//Defino espacio inicial 

void setup (){
  println( "arranco: " + millis() ); 
  size (600, 400);
  init(); //corro func inicializacion
}

void draw () {
  //println("Milis hasta ahora " + millisStart + " total");
  println("Estado de pantalla: estamos #" + pantalla + " aca");
  println( "cereal: " + cereal + " y papel: " + papel + " y final: " + opcFinal);
  println("Milis base " + millis() + " millis start: " + millisStart );
  if(pantalla == 1 & millisStart < transicion3segs){
    millisStart = millis(); //Toma los milis desde donde se hace click en pantalla 
   }else if (pantalla == 1 & millis() >= millisStart + transicion1segs){
      println("Eureka"); //confirmacion que la espera esta bien en la consola
     drawPantalla1(); //transicion por tiempo a la pantalla 1
     if (valorDistOD <= radio1){println ("ELECCION CEREAL: " + cereal);
       cereal = 1;
       pantalla=2;
     }else if (valorDistOI <= radio1){
       cereal = 2;
       println ("ELECCION CEREAL: " + cereal);
       pantalla=2;
     }  
  }else if (pantalla == 2){
    drawPantalla2();
  }
   else if (pantalla == 3 & (millis() - millisStart) >= transicion3segs){
      println("llEGADO al trabajo"); //confirmacion que la espera esta bien en la consola
     drawPantalla3(); //bien carajo se formo la pantalla 3
   }else if (pantalla == 4 & (millis() - millisStart) >= transicion3segs){
      println("llEGADO a la eleccion 2"); //confirmacion que la espera esta bien en la consola
     drawPantalla5(); //bien carajo se formo la pantalla 5 de eleccion
     if (valorDistOD2 <= radio1){
       papel = 1;
       drawPantalla6a();
       millisStart = millis();
       pantalla = 5;
     }else if (valorDistOI2 <= radio1){
       papel = 2;
       drawPantalla6b();
       millisStart = millis();
       pantalla = 5;
     }
   }else if (pantalla == 6 & (millis() - millisStart) >= transicion3segs){
     println("Nos vamos del trabajo"); //confirmacion que la espera esta bien en la consola
     drawPantalla8(); //bien carajo se formo la pantalla 8
   }else if (pantalla == 7 & (millis() - millisStart) >= transicion3segs){
     println("Llegamos a casa"); //confirmacion que la espera esta bien en la consola
     drawPantalla9(); //bien carajo se formo la pantalla 8
   }else if (pantalla == 8 & (millis() - millisStart) >= transicion3segs){
      println("llEGADO a la eleccion 3"); //confirmacion que la espera esta bien en la consola
     drawPantalla10(); //bien carajo se formo la pantalla 5 de eleccion
     if (valorDistOD3 <= radio1){
       opcFinal = 1;
       drawPantalla11a();
       millisStart = millis();
       pantalla = 9;
     }else if (valorDistOI3 <= radio1){
       opcFinal = 2;
       drawPantalla11b();
       millisStart = millis();
       pantalla = 9;
     }
   }else if (pantalla == 10 & (millis() - millisStart) >= transicion3segs){
     println("Se llega por suerte al buen final"); //confirmacion que la espera esta bien en la consola
     drawPantalla14(); //bien carajo se formo la pantalla final buena
   }
 }
   
void mousePressed(){
  if (pantalla == 0) {
     drawPantalla0();
     pantalla = 1;
   }else if (pantalla == 2){
      println("Llegamos a pantalla de camino al trabajo");
     drawPantalla2b();
      pantalla = 3;// aqui se asigna el numero de la pantalla 3
   }else if (pantalla == 3) {
     checkCereal();
    }else if (pantalla == 5){
    checkPapel();
    }else if (pantalla == 9){
    checkFinal();
    }else if (pantalla == 11){
    pantalla = 0;
    init();
    }
  }

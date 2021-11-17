//creo mi instancia de Juego
//declaro la clase juego
Juego juego;

void setup(){
   size (800, 400);
   //inicializo clase juego
   juego = new Juego(10);
}

void draw(){
  background(247,117,117);
  
  //llamo a los métodos de la clase juego
  juego.update();
  juego.draw();
  
}

void keyPressed(){
//metodos de teclas
juego.teclado (keyCode);
}

void mousePressed(){
}

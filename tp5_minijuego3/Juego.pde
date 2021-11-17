class Juego {
  //PROPIEDADES (variables)
  int estado;

  Dana jugador;
  Fuego[] fuego;

  int c = 10;

  //CONSTRUCTOR (setup del objeto)
  Juego(int cantidad) {
    //estadoGeneralDelJuego = "menu";
    c = cantidad;
    estado = 0;
    // inicializar los ojetos: jugador, copos, cenizas
    jugador = new Dana(width/2, 300, 100);
    //declaro la dimension de los arreglos
    fuego = new Fuego[c];
    //inicializo los objetos de los arreglos
    for (int i = 0; i<c; i++) {
      fuego[i] = new Fuego (-100,-100,100);
    }
  }

  //METODOS (funciones)
  //actualizar()
  void update () {
    for (int i = 0; i<c; i++) {
      fuego [i].update();
    }
    
    //deduzco si hay colision
    jugador.colision(fuego); 
  }
  
  //dibujar()
  void draw () {
    jugador.dibujar();

    for (int i = 0; i<c; i++) {
      fuego [i].draw();
    }
  }
  //resetear()
  void reciclar() {
    for (int i = 0; i<c; i++) {
      fuego [i].draw();
    }
  }

  void teclado (int k) {
    jugador.mover(k);
    //jugador.moverI();
    //jugador.moverD();
  }

  //new flash in real time
  int devolverEstadoJuego() {
    return estado;
  }
}

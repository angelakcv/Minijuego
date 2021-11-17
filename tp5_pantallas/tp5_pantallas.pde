//Hi

PFont font1, font2;
PImage img1, img2;
int Pantallas;

void setup(){
  size (800, 400);
  
  img1 = loadImage("fon_00.png");
  img2 = loadImage("fon_07.png");
  
  font1 = loadFont ("OldLondon-48.vlw");
  font2 = loadFont ("VCROSDMono-48.vlw");
  
  Pantallas = 0;
}

  void draw () {
  if (Pantallas == 0) {
    image(img1, 0, 0, 800, 400);

    //título
    texto(font1, color(255), 80);
    text("El ingrediente misterioso", 50, 100);
    
    //botón INICIAR
    if (zona(width/2,height/2-40,150,50)) {
      fill(0);
    } else {
      fill(72, 10, 142);
    }
    rect(width/2,height/2-40,150,50);
     
    texto(font2, color(255), 30);
    text("INICIAR", 340, height/2-30);

    //botón CRÉDITOS
    if (zona(width/2,height/2+30,150,50)) {
      fill(0);
    } else {
      fill(72, 10, 142);
    }
    rect(width/2,height/2+30,150,50);
    
    texto(font2, color(255), 30);
    text("Créditos", 333, height/2+40);
  }
  if (Pantallas == 1) {
    image(img2, 0, 0, 800, 400);
    noStroke();
    //cuadro texto
    recTexto(color(0,100), width/2, 400, width, 70);
    texto(font2, color(255), 20);
    text("Evita los ataques: <- ->           Ataca: ESPACIO", 10, 390);
  }
  if (Pantallas == 2) {
    recTexto(color(0,255,0, 10), width/2, height/2, width, height);
    stroke(0);
    strokeWeight(100);
    
       texto(font2, color(255), 150);
     text("Ganaste", 100, 250);
     
      texto(font2, color(100), 30);
    text("Presiona 'r' para reiniciar el juego", 90, 385);
  }
  if (Pantallas == 3) {
   recTexto(color(255, 0, 0, 10), width/2, height/2, width, height);
   
    texto(font2, color(255), 150);
    stroke(0);
     text("Perdiste", 50, 250);
     
      texto(font2, color(100), 30);
    text("Presiona 'r' para reiniciar el juego", 90, 385);
  }
  if (Pantallas == 4) {
    image(img1, 0, 0, 800, 400);
    texto(font1, color(255), 80);
    text("El ingrediente misterioso", 50, 100);

    texto(font2, color(255), 20);
    text("PERSONAJES", 360, 160);
    text("Dana, la aprendiz de magia", 80, 190);
    text("Calcifer, el demonio fuego", 450, 190);

    text("DATOS", 380, 250);
    text("Prof. Matias Jauregui Lorda", 80, 280);
    text("Comisión 2", 80, 310);
    text("Calizaya Villamonte, Angela", 450, 280);
    text("Legajo 88298/2", 450, 310);

    texto(font2, color(70), 30);
    text("Presiona 'r' para reiniciar el juego", 100, 390);
  }
}

void mousePressed() {
  //botón inicio
  if ((mouseX > width/2) && (mouseX < width/2+150) && (mouseY > 160) && (mouseY < 160+50)) {
    Pantallas = 1;
  }
  //botón CRÉDITOS
  if ((mouseX > width/2) && (mouseX < width/2+150) && (mouseY > 230) && (mouseY < 230+50)) {
    Pantallas = 4;
  }
  //PARA PASAR DE PANTALLA
  if ((mouseX > 780) && (mouseX < 780+30) && (mouseY > 380) && (mouseY < 380+30)) {
    Pantallas ++;
  }
}


/*void keyPressed() {
  if (key == 'r') {
  }
}
    */
    
    
  //texto
  void texto(PFont font, color ct, int sizeT) {
  fill (ct);
  textFont (font);
  textSize (sizeT);
}

//rectangulo donde va el texto
void recTexto(color cr, float posXr, float posYr, float wr, float hr) {
  fill (cr);
  rectMode(CENTER);
  rect (posXr, posYr, wr, hr);
}

//botones
void boton(color cb, float posXb, float posYb, float wb, float hb) {
  fill (cb);
  rectMode(CENTER);
  rect (posXb, posYb, wb, hb);
}

//boolean zona
boolean zona (float x, float y, float w, float h){
  boolean b;
  if ((mouseX > x) && (mouseX < x+w) && (mouseY > y) && (mouseY < y+h)){
    b = true;
  }else{
    b = false;
  }
    return b;
}

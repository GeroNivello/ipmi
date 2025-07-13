PImage imagen1;
PImage imagen2;
PImage imagen3;
PFont tipografia;
int segundos;
float X, Y, Y2, Y3, O, O2, O3, O4;
String TEXTO = "EL ETERNAUTA";
String TEXTO2 = "Se trata de una adaptació \n de la clásica y celebrada\n historieta El Eternauta \n publicada por primera vez en 1957\n creada por Héctor Germán Oesterheld\n y Francisco Solano López.";
String TEXTO3 = "PRODUCCIÓN\nARGENTINA";
String TEXTO4 = "REINICIAR";

void setup() {
  size(640, 480);

  imagen1 = loadImage("darin.jpg");
  imagen2 = loadImage("comic.jpg");
  imagen3 = loadImage("paisaje.jpg");

  tipografia = loadFont("Impact48.vlw");

  X = width / 2;
  Y = -100;
  Y2 = height + 50;
  O = 255;
  O2 = 0;
  O3 = 0;
  O4 = 0;
}

void draw() {
  background(0);

  if (frameCount % 60 == 0) {
    segundos++;
  }

  // Cambiar imágenes por segundo
  if (segundos <= 10) {
    Y3++;
    tint(170);
    image(imagen1, 0, 0, 640, 480);
  } else if (segundos <= 20) {
    tint(170);
    image(imagen2, 0, 0, 640, 480);
  } else {
    tint(170);
    image(imagen3, 0, 0, 640, 480);
  }

  // TEXTO 1
  if (segundos <= 10) {
    if (segundos < 3) {
      Y += 3;
      if (Y > height / 2) {
        Y = height / 2;
      }
    } else if (segundos <= 6) {
      Y = height / 2;
      O = 255;
    } else {
      Y -= 3;
      O = map(Y, height / 2, -100, 255, 0);
    }

    fill(255, O);
    textFont(tipografia);
    textAlign(CENTER);
    textSize(70);
    text(TEXTO, X, Y);
  }

  // TEXTO 2
  if (segundos > 10 && segundos <= 20) {
    if (segundos <= 13) {
      Y2 -= 3;
      if (Y2 < 200) {
        Y2 = 200;
      }
      O2 = map(Y2, height + 50, height / 2, 0, 255);
    } else if (segundos <= 17) {
      O2 = 255;
    } else {
      Y2 -= 3;
      O2 = map(Y2, height / 2, -100, 255, 0);
    }

    fill(255, O2);
    textFont(tipografia);
    textAlign(CENTER);
    textSize(30);
    text(TEXTO2, X, Y2);
  }

  // TEXTO 3
  if (segundos > 20) {
    if (O3 < 255) {
      O3 += 2;
    }
    fill(255, O3);
    textFont(tipografia);
    textAlign(CENTER);
    textSize(80);
    text(TEXTO3, X, height / 2);
  }

  // Mostrar botón después de 23s
  if (segundos > 23) {
    if (O4 < 255) {
      O4 += 2;
    }
  }

  // BOTÓN REINICIAR
  fill(255, O4);
  noStroke();
  rect(290, 430, 80, 40);
  fill(0, O4);
  textSize(17);
  textAlign(CENTER);
  text(TEXTO4, 330, 458);
}

void mousePressed() {
  if (mouseX > 310 && mouseX < 350 && mouseY > 430 && mouseY < 470) {
    X = 320;
    Y = 0;
    Y2 = height + 50;
    O = 255;
    O2 = 255;
    O3 = 0;
    segundos = 0;
    O4 = 0;
  }
}

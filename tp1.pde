//Leonel Brianese 93490/3 Comision 1 tp1
float contador;
PImage catedral;
PImage catedral2;
PImage catedral3;
PImage boton;
int posX;
int posX2;
int posX3;
int posY;
int posY2;
int posY3;
PFont fuente;

void setup () {
  size( 640, 480);
  catedral= loadImage("catedral4.jpg");
  catedral2= loadImage("catedral2.png");
  catedral3= loadImage("catedral3.png");
  boton= loadImage("boton.jpg");
  fuente = loadFont("ProcessingSans-Bold-10.vlw");
  textFont(fuente, 35);
  textAlign(CENTER, CENTER);
  textSize(60);
  posX  = 920;
  posX2 = 640;
  posX3 = 10;
  posY  = 500;
  posY2 = 480;
  posY3 = 0;
}

void draw() {

  contador = contador + 1;

  //primer pantalla
  if (contador < 500) {
    image(catedral, 0, 0, 640, 480);
    textSize(30);
    text("La Catedral es uno de los edificios más emblemáticos \n de la ciudad de La Plata.", posX, height/2);
    posX = posX - 3;
  }
  //segunda pantalla
  else if (contador > 600 && contador < 950) {
    image(catedral2, 0, 0, 640, 480);
    fill(0);
    textSize(30);
    text("Fue construida a finales del siglo XIX \n en estilo neogótico francés \n y se encuentra ubicada \n en el centro de la ciudad.", posX3, posY2);
    posY2 = posY2 - 2;
    posX3 = posX3 + 2;
  }
  //tercer pantalla
  else if (contador > 950 && contador < 1250) {
    image(catedral3, 0, 0, 640, 480);
    fill(0, 0, 250);
    textSize(30);
    text("Tiene una altura de 112 metros \n la cual se puede observar \n desde varios puntos de la ciudad.", width/2, posY);
    posY = posY - 1;
  }
  //cuarta pantalla
  else if (contador > 1250 && contador < 1300) {
    fill(0);
    rect(102, 140, 430, 200);
    fill(0);
    textSize(20);
    text("reinicio", 600, 450);
    image(boton, 0, 0, 640, 480);
  }
}
void mousePressed() {
  if (mouseX >= 102 && mouseX <= 532 && mouseY >= 140 && mouseY <= 340) {
posX  = 920;
  posX2 = 640;
  posX3 = 10;
  posY  = 500;
  posY2 = 480;
  posY3 = 0;
    contador = 0;
  }
}

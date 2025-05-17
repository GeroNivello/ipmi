PImage imagen1;
PImage imagen2;
int T=255;
PFont tipografia;
float X, Y, Y2,Y3, O, O2,O3;

String TEXTO = "EL ETERNAUTA";
String TEXTO2 = "RICARDO DARÍN\nJUAN SALVO";
String TEXTO3 = "PRODUCIÓN\nARGENTINA";

void setup(){
 
   
size (640,480);
//imagenes
imagen1 = loadImage("darin.jpg");//imagen 1


imagen2 = loadImage("resset.png");

tipografia = loadFont("Impact48.vlw");
//texto
X = 320;//posX
Y= 0;//posY
Y2 =-55;//posY2 del texto 2
Y3= 240;//posY3 del texto 3
O = 255;//opacidad 
O2= 255;// opacidad texto 2
O3= 0;//opacidad texto 3
T = 255;
}
void draw(){
 
 background(0);
 
 tint(180);
 image (imagen1,0,0,640,480);
 
 //TEXTOS
 fill(255,O);
 textFont( tipografia);
 textAlign(CENTER);
 textSize(70);
 text(TEXTO,X,Y*2,100);
 
 fill(255,O2);
 textSize(70);
 text(TEXTO2,X,Y2*2,100);
 
 
  fill(255,O3);
  textSize(100);
 text(TEXTO3,X,200);
 

 O =  map(Y,0, 255, 255, 0);
 Y ++;
 if ( Y > 300){
   Y2 ++;
  O2= map(Y2,0,255,255,0);
 }
  if 
 (Y2 == 400){
   O3=255;
 
 }
 
fill(255,255,255,30);
noStroke();


// NIEVE
circle(100,Y*2,10);
circle(80,Y,12);
circle(10,Y/4,11);
circle(500,Y/6,16);
circle(320,Y*4,13);
circle(600,Y*3,9);
circle(430,Y*2,8);
circle(410,Y,10);
circle(40,Y,14);
circle(150,Y/5,10);
circle(70,Y*5,12);
circle(16,Y/4,11);
circle(520,Y*4,16);
circle(370,Y/3,13);
circle(610,Y*3,9);
circle(430,Y*2,8);
circle(460,Y/2,10);
circle(40,Y,14);
circle(100,Y*2,10);
circle(80,Y,12);
circle(10,Y2/4,11);
circle(500,Y2/6,16);
circle(320,Y2*4,13);
circle(600,Y2*3,9);
circle(430,Y2*2,8);
circle(410,Y2,10);
circle(40,Y2,14);
circle(150,Y2/5,10);
circle(70,Y2*5,12);
circle(16,Y2/4,11);
circle(520,Y2*4,16);
circle(370,Y2/3,13);
circle(610,Y2*3,9);
circle(430,Y2*2,8);
circle(460,Y2/2,10);
circle(40,Y2,14);

//BOTON
fill(255);
stroke(0);
strokeWeight(2);
rect(310,430,40,40);
 tint(200);
 image(imagen2,315,435,30,30);
}
void mousePressed() {
  
  if (mouseX > 310 && mouseX < 350 && mouseY > 430 && mouseY < 470) {

    X = 320;
    Y = 0;
    Y2 = -55;
    O = 255;
    O2 = 255;
    O3 = 0;
  }
}

//Geronimo nivello, comision 1, legajo: 122815/1
// video: https://youtu.be/7uj6ZgBA9EE
PImage imagen;
color colorLineas;

void setup(){

colorLineas = color(0);
size (800,400); 
imagen = loadImage("36.jpg");

} 
 
void draw(){
  
 background(255); 
 
 fondo(44); 
 medio(535,60,133,16,44);
 secuencia(5,535,60,133,0);
 
 image(imagen,0,0,+width/2,height);
}
// fondo de lineas diagonales 

  void fondo(int sepa){
   strokeWeight(16);
   stroke(colorLineas);
   for(int i=height;i>-width/2;i-=sepa){
   line (i,width,width,i); 
   }
  }
  
// esquinas del rectangulo del medio

void esquina1(float x, float y, float ancho) { // triang superior
  triangle(x, y, x+ancho, y, x+ancho, y+ancho);
}

void esquina2(float x, float y, float ancho) { // triángulo inferior
  triangle(x, y, x+ancho, y, x, y-ancho);
}

void secuencia(int cant, int x, int y, int tama,int inicio) {  
   noStroke();
  for (int i=inicio; i<=cant; i++) {
    float tamMin=tama/cant; 
   
  
    float x1=map(i, inicio, cant, x, x+tama-tamMin);
    
    float t1=map(i, inicio, cant, tama, tamMin ); 
    if (imp(i)) { 
      fill(255);
    } else {
      fill(colorLineas);
    }
    esquina1(x1, y, t1); //superior
    float t2=map(i, inicio, cant, tama, tamMin ); 
    if (imp(i)) { 
      fill(colorLineas);
    } else {
      fill(255);
    } 
    esquina2(x,y+tama*2,t2);//inferior
}
}

boolean imp(int indice) {
  return indice%2==1;
}

// medio del rectangulo

void medio(int x, int y, int ancho, int grosor,int sep) {
noStroke();
   fill(255);
  rect(x, y, ancho, ancho*2);
for (int i = x; i >= y; i -= sep) {
    float yFinal = i+ y+ancho /2 ;

    if (yFinal <= y + ancho*2) {  // solo dibuja si no se pasa del rectángulo
      strokeWeight(grosor);
      stroke(colorLineas);
      strokeCap(PROJECT);
      line(x, i, x + ancho, yFinal);
    }
}
} 
void mousePressed() {
  
  colorLineas = color(random(255), random(255), random(255));
  
}
void keyPressed() {
  
    colorLineas=0;
  }

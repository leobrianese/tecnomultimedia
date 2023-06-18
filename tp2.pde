// Leonel Brianese 93490/3 tp2 
int x=800;
PImage ilusion;
void setup() {
  size(800, 400 );
}
void draw() {
  background(250);
  ilusion=loadImage("tp2.jpg");
  image(ilusion,0,0,400,400);
  
  for (x=800; x<height; x+=20) {
      line(x,0,x,200);
      fill(0);
    }
  }

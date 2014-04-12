import geomerative.*;

RShape shp;

void setup(){
  size(200, 200);
  smooth();

  // VERY IMPORTANT: Allways initialize the library before using it
  RG.init(this);

  shp = RG.loadShape("a.svg");
  shp = RG.centerIn(shp, g);
  RPoint[] points;
  points = shp.getPoints(); 
  println(points);
} 

void draw(){
  background(255);
  translate(width/2, height/2);

  RG.shape(shp);
}

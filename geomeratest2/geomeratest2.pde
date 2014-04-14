import geomerative.*;
import fontastic.*;

RShape a, polyshp;
RPoint[] points;
PVector[] pts;

boolean generer = true ;          // ## METTRE EN FALSE POUR DÉBUGER
boolean curves = false ;            // ## /!\/!\ METTRE EN TRUE SI LE SVG CONTIENT DES COURBES /!\/!\

Fontastic font = new Fontastic(this, "lautre2");

void setup() {
  size(900, 900); 
  background(255);
  
  RG.init(this);                    // TOUJOURS INITIALISER LA LIBRAIRIE
  
  
  
// ####################### LETTRE a #######################

  a = RG.loadShape("a3.svg");        // CHARGER L'IMAGE

  a.scale(1.6, 1.6);
  a.scale(1, -1);
  a.translate(-478,750);

  a.draw();

// S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    translate(0,400);
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    polyshp = RG.polygonize(a);
    points = polyshp.getPoints();
    pts = new PVector[points.length];
    println("il y a " + points.length + " points.");
    beginShape();
    
    for(int i=0; i<points.length; i++){
      //points[i].print();
      pts[i] =  new PVector(points[i].x, points[i].y);

      println(i + " = (" +pts[i].x + ", " + pts[i].y +")");
      
      strokeWeight(1);               // POUR LE DÉBUG
      vertex(pts[i].x, pts[i].y);    // POUR LE DÉBUG
    }
    
    endShape();
    
// S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    points = a.getHandles();

    pts = new PVector[points.length];
    translate(0,400);
  
    beginShape();
    
    for(int i=0; i<points.length; i++){
      pts[i] =  new PVector(points[i].x, points[i].y);    

      strokeWeight(1);                    // POUR LE DÉBUG
      vertex(points[i].x, points[i].y);   // POUR LE DÉBUG
    }
    
    endShape();
  }



  if (generer){
    font.addGlyph('a').addContour(pts);
    font.buildFont(); 
    font.cleanup();
    println( " \n " );
    println( " ################# ");
    println( " #### D 0 N E #### ");
    println( " ################# ");
    exit();
  }

}



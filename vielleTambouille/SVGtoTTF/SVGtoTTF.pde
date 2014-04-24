import geomerative.*;
import fontastic.*;

RShape lettre , lettrePoly;
RPoint[] lettrePoints;
PVector[] lettrePointsVec;
int charWidth = 900;                                    // --> DÉFINIR EN FONCTION DE LA LARGEUR DU SVG

boolean curves = false ;                                 // --> /!\/!\ METTRE EN TRUE UNIQUEMENT SI LE SVG CONTIENT DES COURBES /!\/!\

Fontastic font = new Fontastic(this, "BasicFract-V1");     // --> DÉFINIR LE NOM DE LA FONTE

void setup() {
  size(900, 900);  

  RG.init(this);                                        // TOUJOURS INITIALISER LA LIBRAIRIE

  // --> MÉTA-DONNÉES DE LA FONTE
  font.setAuthor("Etienne Ozeray & Lucas Lejeune");
  font.setVersion("Beta");
  //font.setLicense("SIL OFL (http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL)");
  font.setAdvanceWidth(int(charWidth));  
  
  lettreA();
  lettreB();
  lettreC();
  lettreD();
  lettreE();
  lettreF();
  lettreG();
  lettreH();
  lettreI();
  lettreJ();
  lettreK();
  lettreL();
  lettreM();
  lettreN();
  lettreO();
  lettreP();
  lettreQ();
  lettreR();
  lettreS();
  lettreT();
  lettreU();
  lettreV();
  lettreW();
  lettreX();
  lettreY();
  lettreZ();

  font.buildFont(); 
  font.cleanup();
    
  println( " \n " );
  println( " ################# ");
  println( " #### D 0 N E #### ");
  println( " ################# ");
  exit();
}



// ####################### LETTRE a #######################

void lettreA(){
  char lettreActuelle = 'a';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("00.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE b #######################

void lettreB(){
  char lettreActuelle = 'b';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("01.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE c #######################

void lettreC(){
  char lettreActuelle = 'c';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("02.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE d #######################

void lettreD(){
  char lettreActuelle = 'd';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("03.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE e #######################

void lettreE(){
  char lettreActuelle = 'e';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("04.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE f #######################

void lettreF(){
  char lettreActuelle = 'f';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("05.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE g #######################

void lettreG(){
  char lettreActuelle = 'g';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("06.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE h #######################

void lettreH(){
  char lettreActuelle = 'h';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("07.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE i #######################

void lettreI(){
  char lettreActuelle = 'i';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("08.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE j #######################

void lettreJ(){
  char lettreActuelle = 'j';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("09.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE k #######################

void lettreK(){
  char lettreActuelle = 'k';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("10.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE l #######################

void lettreL(){
  char lettreActuelle = 'l';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("11.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE m #######################

void lettreM(){
  char lettreActuelle = 'm';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("12.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE n #######################

void lettreN(){
  char lettreActuelle = 'n';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("13.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE o #######################

void lettreO(){
  char lettreActuelle = 'o';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("14.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE p #######################

void lettreP(){
  char lettreActuelle = 'p';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("15.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE q #######################

void lettreQ(){
  char lettreActuelle = 'q';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("16.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}



// ####################### LETTRE r #######################

void lettreR(){
  char lettreActuelle = 'r';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("17.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE s #######################

void lettreS(){
  char lettreActuelle = 's';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("18.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE t #######################

void lettreT(){
  char lettreActuelle = 't';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("19.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}



// ####################### LETTRE u #######################

void lettreU(){
  char lettreActuelle = 'u';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("20.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE v #######################

void lettreV(){
  char lettreActuelle = 'v';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("21.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE W #######################

void lettreW(){
  char lettreActuelle = 'w';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("22.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE x #######################

void lettreX(){
  char lettreActuelle = 'x';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("23.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE y #######################

void lettreY(){
  char lettreActuelle = 'y';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("24.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}




// ####################### LETTRE z #######################

void lettreZ(){
  char lettreActuelle = 'z';                                                   // LA LETTRE À TRAITER
  lettre = RG.loadShape("25.svg");                                            // CHARGER L'IMAGE
  lettre.translate(0,250);
  lettre.scale(1.6, -1.6, width/2, height/2);

  lettre.draw();                                              // POUR LE DÉBUG

// ---------> S'IL Y A DES COURBES, CRÉE UN POINT PAR PIXEL
  if(curves) {
    RG.setPolygonizer(RG.UNIFORMSTEP);
    RG.setPolygonizerStep(0);
    lettrePoly = RG.polygonize(lettre);
    lettrePoints = lettrePoly.getPoints();
    lettrePointsVec = new PVector[lettrePoints.length];
    println("il y a " + lettrePoints.length + " points.");    
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
        
// ---------> S'IL N'Y A PAS DE COURBE, PREND UNIQUEMENT LES POINTS DE BASE DU SVG
  } else {
    lettrePoints = lettre.getHandles();
    lettrePointsVec = new PVector[lettrePoints.length];
    translate(0,400);      
    for(int i=0; i<lettrePoints.length; i++){
      lettrePointsVec[i] =  new PVector(lettrePoints[i].x, lettrePoints[i].y);    
      println(i + " = (" +lettrePoints[i].x + ", " + lettrePoints[i].y +")");
    }
  }
  
  font.addGlyph(lettreActuelle).addContour(lettrePointsVec);
  println( "La lettre -- " + lettreActuelle + " -- a été créée !");
}






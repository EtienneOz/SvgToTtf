import fontastic.*;
import java.util.List;

PShape lettre_a, lettre_b, lettre_c, lettre_d, lettre_e, lettre_f, lettre_g, lettre_h, lettre_i, lettre_j, lettre_k, lettre_l, lettre_m, 
lettre_n, lettre_o, lettre_p, lettre_q, lettre_r, lettre_s, lettre_t, lettre_u, lettre_v, lettre_w, lettre_x, lettre_y, lettre_z;
PShape achild, bchild, cchild, dchild, echild, fchild, gchild, hchild, ichild, jchild, kchild, lchild, 
mchild, ochild, pchild, qchild, rchild, schild, tchild, uchild, vchild, wchild, xchild, ychild, zchild;
int i, j, j2, nbpts;
//int charWidth = 100;
float[] X, Y;
Fontastic font = new Fontastic(this, "twistinus18 ");


void setup(){
  size( 900, 900, P3D );
   background(255);
   lettre_a = loadShape("a.svg");
   /*
   lettre_b = loadShape("b.svg");
   lettre_c = loadShape("c.svg");
   lettre_d = loadShape("d.svg");
   lettre_e = loadShape("e.svg");
   lettre_f = loadShape("f.svg");
   lettre_g = loadShape("g.svg");
   lettre_h = loadShape("h.svg");
   lettre_i = loadShape("i.svg");
   lettre_j = loadShape("j.svg");
   lettre_k = loadShape("k.svg");
   lettre_l = loadShape("l.svg");
   lettre_m = loadShape("m.svg");
   lettre_n = loadShape("n.svg");
   lettre_o = loadShape("o.svg");
   lettre_p = loadShape("p.svg");
   lettre_q = loadShape("q.svg");
   lettre_r = loadShape("r.svg");
   lettre_s = loadShape("s.svg");
   lettre_t = loadShape("t.svg");
   lettre_u = loadShape("u.svg");
   lettre_v = loadShape("v.svg");
   lettre_w = loadShape("w.svg");
   lettre_x = loadShape("x.svg");
   lettre_y = loadShape("y.svg");
   lettre_z = loadShape("z.svg");
   */
  
}

void draw(){
}



void keyPressed(){
  if (key == 'a'){
  background(255);    
  println("== a ==");
//  lettre_a.scale(-1.0);
  shape(lettre_a);

  for ( int c = 0; c < lettre_a.getChildCount(); ++c ){
      achild = lettre_a.getChild( c );
      for (  i = 0; i < achild.getVertexCount(); ++i ){
      }
  }
  
  PVector[] points = new PVector[i];  
  println("il y a " + i + " points.");  
  
  for ( int c = 0; c < lettre_a.getChildCount(); ++c ){
      achild = lettre_a.getChild( c );
      for ( int i2 = 0; i2 < i; i2++ ){
          points[i2] =  new PVector(achild.getVertexX( i2 )-650, achild.getVertexY(i2)-490);
          points[i2].rotate(PI);
          points[i2].mult(1.5);
          //println(i2 + " : X = " + child.getVertexX(i2) + ", Y = "+ child.getVertexX(i2));
          //println(i2 + "--" + i3);
       }
   }
   //font.setAdvanceWidth(int(charWidth));
   //scale(-1,1);
   font.addGlyph('a').addContour(points);        
}

/*  
  if (key == 'b'){
  background(255);
  println("== b ==");
  shape(lettre_b,0,0);
  for ( int c = 0; c < lettre_b.getChildCount(); ++c ){
      bchild = lettre_b.getChild( c );
      for (  i = 0; i < bchild.getVertexCount(); ++i ){
      }
  }
  PVector[] points = new PVector[i];  
  println("il y a " + i + " points.");     
  for ( int c = 0; c < lettre_b.getChildCount(); ++c ){
      bchild = lettre_b.getChild( c );
      for ( int i2 = 0; i2 < i; i2++ ){
          //scale(-1.0, 1.0);
          points[i2] =  new PVector(bchild.getVertexX( i2 )-600, bchild.getVertexY(i2)-600);
          points[i2].rotate(PI);
       }
   }
   //font.setAdvanceWidth(int(charWidth));
   font.addGlyph('b').addContour(points);        
}  
*/
  
  if(key == ENTER){
    font.buildFont(); 
    font.cleanup();
    exit();
  }
}



/*
void getpoints(){
  for ( int c = 0; c < lettre.getChildCount(); ++c ){
    child = lettre.getChild( c );
    for (  i = 0; i < child.getVertexCount(); ++i ){
      for (j = 0; j < i; j++ ){
        points = new PVector[i];            
        points[j] =  new PVector(child.getVertexX( i ), child.getVertexY( i ));
        //println(points[j]);
      }
    //println("points[" + j + "] = new PVector(" + child.getVertexX( i ) + "," + child.getVertexY( i ) + ");");
    }
  }
}




// ## Fonction qui lit les svg en texte
// ## 1 : Tout retirer sauf la balise <path/>
// ## 2 : parser le contenu du parametre d de la balise path en !!!!!commencant par les lettres!!!!!
char[] lettresUtiles = 
    M
    L
    H
    V
    C
    S
    Q
    T
    A
    Z
;
// ## Renvoie une erreur si il y a une lettre qui ne fait partie de letresUtiles
// ## 3 : En fonction de ce que l'array listeLettres renvoie, alors déterminer listeNombres
// ## Les deux listes doivent faire la meme longueur, listeNombres doit comporter des suites de nombres séparées par des espaces
char[] listeLettres;
string[] listeNombres;
 for (int i = 0; i< listeLettres.length; i++){
    // Parse l'element i de listeNombres en fonction
 } 

// --> SWITCH

*/

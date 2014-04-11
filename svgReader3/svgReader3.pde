import fontastic.*;

XML xml;
String[] listeLettres, listeNombres;
float[][] lignesPoints;
String[] sousliste;
int i, j;
boolean debug = true;
float[][] listeGenerale;
float[] temp;
Fontastic font = new Fontastic(this, "tonton");

void setup(){
   // On va chercher le svg
   xml = loadXML("a.svg");
   if(debug)println("ETAPE 1 : "+xml);
   
   // variable en XML qui stocker la balise path
   XML path = xml.getChild("path");
   if(debug)println("ETAPE 2 : "+path);
   
   // variable string qui stocke l'attribut d de la balise path
   String attr = path.getString("d");
   attr = attr.toUpperCase();
   if(debug)println("ETAPE 3 : "+attr);
   
   // creation d'une liste ne contenant que les lettres, dans l'ordre
   listeLettres = splitTokens(attr,"0123456789. ");

   if(debug) {
     println("ETAPE 4(les lettres) : ");
     for (int x = 0; x < listeLettres.length ; x++) {
       println(listeLettres[x]); 
     }
   }
  
  // creation d'une liste ne contenant que les nombres, selon le nombre de lettres 
  listeNombres = splitTokens(attr,"CLMHVSQTAZ");
  if(debug) {
    println("ETAPE 5(les nombres) : ");
    for (int k = 0;k<listeNombres.length;k++) {
        println(listeNombres[k]);
    }
  }
  
  // Intégration des données splittées dans float[][] listeGenerale
  for (int a = 0; a < listeNombres.length; a++) {      // Premiere dimension
    temp = float(splitTokens(listeNombres[a]," "));    // Stockage temporaire
    if(debug)println("###### ACTION N°"+a+" qui prend "+temp.length+" arguments");
    listeGenerale = new float[listeNombres.length][6]; // Peu importe le nombre d'arguments, il en fera 6
    for (int b = 0; b < temp.length; b++) {            // Deuxieme dimension
      listeGenerale[a][b]=temp[b];                     // Intégration de la donnée
      if(debug)println(listeGenerale[a][b]); 
    }
  }


  // Copie de float[][] listeGenerale dans la liste d'objets FPoint[]
println("ouais "+listeGenerale[56][2]);
/*  for (int tourne = 0; tourne<lettreFinale.length;tourne++) {
    if (listeGenerale[tourne][2] > 0) {
      lettreFinale[tourne] = new FPoint(listeGenerale[tourne][4],listeGenerale[tourne][5]);
      lettreFinale[tourne].setControlPoint1(listeGenerale[tourne][0],listeGenerale[tourne][1]);
      lettreFinale[tourne].setControlPoint2(listeGenerale[tourne][2],listeGenerale[tourne][3]);
      if(debug)println("Ceci était compliqué");
    } else {
      lettreFinale[tourne] = new FPoint(listeGenerale[tourne][0],listeGenerale[tourne][1]);
      if(debug)println("Ceci était simple");

    }
  }
*/
  if(debug)println("Voilà qui est fait");
  // On met le tout dans la cocotte, comme dirait Maïté
  //font.addGlyph('a').addContour(lettreFinale);
  //font.buildFont();
  //font.cleanup();
  if(debug)println("La font est générée, il est temps pour moi de me retirer");
  exit();
}

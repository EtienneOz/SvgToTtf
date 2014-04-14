SvgReader
=========

Processing 2

Générer un fichier .ttf à partir de SVG.

Trois méthodes sont expérimentées :
  1 - La méthode getVertex() (vector2.pde), ne permet pas de récupérer les courbes ;
  2 - Le parsing du XML (svgReader.pde), récupère toutes les données (vectors et points de contrôle) mais les restitue   approximativement ;
  3 - L'usage de la librairie Geomerative (geomeratest2.pde), c'est la méthode la plus concluante. Néanmoins celle-ci    crée un points de vecteur par pixel pour les svg contenant des courbes. Cela rend le processus laborieux et le fichier de sortie volummineux.

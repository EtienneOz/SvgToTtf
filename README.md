SvgToTtf
========

Processing 2<br/><br/>

Générer un fichier .ttf à partir de .svg en utilisant la libraire <a href="http://code.andreaskoller.com/libraries/fontastic/" target="_blank">Fontastic</a>.<br/><br/>

Trois méthodes sont expérimentées : <br/>
1 - La méthode getVertex() (vector2.pde), ne permet pas de récupérer les courbes ;<br/>
2 - Le parsing du XML (svgReader.pde), récupère toutes les données (vectors et points de contrôle) mais les restitue   approximativement ;<br/>
3 - L'usage de la librairie <a href="http://www.ricardmarxer.com/geomerative/" target="_blank">Geomerative</a> (geomeratest2.pde), c'est la méthode la plus concluante. Néanmoins celle-ci crée un points de vecteur par pixel pour les svg contenant des courbes. Cela rend le processus laborieux et le fichier de sortie volumineux.<br/><br/>
  
To do :
=======
• /!\ /!\ Trouver une solution pour fermer la forme ;<br/>
• Optimiser le code.

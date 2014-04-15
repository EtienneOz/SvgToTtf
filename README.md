SvgToTtf
========

Processing 2<br/><br/>

Générer un fichier .ttf à partir de .svg en utilisant la libraire <a href="http://code.andreaskoller.com/libraries/fontastic/" target="_blank">Fontastic</a>.<br/><br/>

Trois méthodes sont expérimentées : <br/>
1 - La méthode getVertex() (vector2.pde), ne permet pas de récupérer les courbes ;<br/>
2 - Le parsing du XML (svgReader.pde), récupère toutes les données (vectors et points de contrôle) mais les restitue   approximativement ;<br/>
3 - L'usage de la librairie <a href="http://www.ricardmarxer.com/geomerative/" target="_blank">Geomerative</a> (SVGtoTTF.pde), c'est la méthode la plus concluante. Néanmoins celle-ci crée un points de vecteur par pixel pour les svg contenant des courbes. Cela rend le processus laborieux et le fichier de sortie volumineux.<br/><br/>
  
To do :
=======
• /!\ /!\ Trouver une solution pour fermer la forme. Le fichier ttf de sortie génère des caractères dont la forme a été jointe entre le dernier et le premier point. On se retrouve donc avec un ou plusieurs trait voir des remplissages intempestifs sur les caractères (voir la seconde image). Une solution serait peut-être de créer un PVector par tracé. Le souci c'est que Fontastic ne prend qu'un seul PVector pour créer un glyphe ;<br/>
• Optimiser le code.


Screenshots
===========

Un alphabet complet :
<img src="https://raw.githubusercontent.com/EtienneOz/SvgToTtf/master/Fontes/SVGtoTTF/bin/screenshot.png"/>

Le problème de forme non fermée :
<img src="https://github.com/EtienneOz/SvgToTtf/blob/master/Fontes/geomeratest2/bin/screenshot.png?raw=true"/>

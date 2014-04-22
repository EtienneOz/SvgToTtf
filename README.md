SvgToTtf
========

Générer un fichier .ttf à partir de .svg en utilisant la libraire <a href="http://code.andreaskoller.com/libraries/fontastic/" target="_blank">Fontastic</a>.<br/><br/>

Trois méthodes sont expérimentées : <br/>
1 - La méthode getVertex() (vector2.pde), ne permet pas de récupérer les courbes ;<br/>
2 - Le parsing du XML (svgReader.pde), récupère toutes les données (vectors et points de contrôle) mais les restitue   approximativement ;<br/>
3 - L'usage de la librairie <a href="http://www.ricardmarxer.com/geomerative/" target="_blank">Geomerative</a> (SVGtoTTF.pde), c'est la méthode la plus concluante. Néanmoins celle-ci crée un points de vecteur par pixel pour les svg contenant des courbes. Cela rend le processus laborieux et le fichier de sortie volumineux.<br/><br/>



La méthode finalement retenue (voir <a href="https://github.com/EtienneOz/SvgToTtf/tree/master/SVGtoTTF-v2" target="_blank">SvgToTtf-v2</a>) se passe de Processing et de la librairie Fontastic. C'est finalement le php qui a été retenu pour créer un fichier svg font contenant chaque caractère qui est ensuite converti en ttf via l'api de <a href="http://onlinefontconverter.com/" target="_blank">Online Font Converter</a>.

  
To do :
=======
• Inverser et centrer les glyphes. (une solution temporaire est utilisée en inversant les svg en amont) ;
• Interface graphique.


Screenshots
===========

<img src="https://github.com/EtienneOz/SvgToTtf/blob/master/SVGtoTTF-v2/fontes/backlight-screenshot.png?raw=true"/>
<img src="https://github.com/EtienneOz/SvgToTtf/blob/master/SVGtoTTF-v2/fontes/beta-screenshot.png?raw=true"/>

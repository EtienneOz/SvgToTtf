SvgToTtf
========

Générer un fichier .ttf à partir de 26 .svg .<br/>
Une version en ligne est disponible à l'adresse <a href="http://etienneozeray.fr/svg2ttf" target="_blank">http://etienneozeray.fr/svg2ttf</a> <br/>

Utilisation du php pour créer un fichier svg font contenant chaque caractère qui est ensuite converti en ttf via l'api de <a href="http://onlinefontconverter.com/" target="_blank">Online Font Converter</a>.<br/>
Le dossier de svg doit comporter, dans l'ordre, les lettres suivantes :<br/>
	Capitales = 'A', 'À', 'Æ', 'B', 'C', 'D', 'E', 'É', 'È', 'Ê', 'Ë', 
	'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'Ô', 
	'Ö', 'Œ', 'P', 'Q', 'R', 'S', 'T', 'U', 'Ù', 'Û', 'Ü', 
	'V', 'W', 'X', 'Y', 'Z' <br/>
	 Bas-de-casse = 'a', 'à', 'æ', 'b', 'c', 'ç', 'd', 'e', 'é', 'è', 'ê', 
	'ë', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 
	'ô', 'ö', 'œ', 'p', 'q', 'r', 's', 't', 'u', 'ù', 'û', 
	'ü', 'v', 'w', 'x', 'y', 'z' <br/>
	 Chiffres = '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' <br/>
	 Ponctuation = '-', ',', ';', '!', '?', '\'', '«', '»', '(', ')', '[', 
	']', '{', '}', '@', '*', '&', '#', '%', '+', '±', '=', 
	'$', ':', '.', '/' <br/>
Si une lettre est manquante, la remplacer par un svg dont l'attribut 'd' de la balise &lt;path&gt; est vide.
Chaque svg ne doit comporter qu'une balise  &lt;path&gt; comprenant un attribut 'd' contenant l'ensemble des points. Ils doivent aussi être inversés verticalement et renommés de 1.svg à 26.svg. Enfin, compresser dans un .zip l'ensemble des svg (pas le dossier).
À partir de fichiers images (ici tiff), il est possible d'automatiser le processus via le terminal (sous macOS ou Linux) :<br/>
Installer <a href="http://imagemagick.org/" target="_blank">ImageMagick</a> et <a href="http://autotrace.sourceforge.net/">Autotrace</a> puis dans le terminal, taper :<br/>
<pre>
	# 1 -> aller dans le dossier 		
	  cd chemin/vers/le/dossier
	# 2 -> flip les images
	  mogrify -flip  *.tif
	# 3 -> Vectoriser le dossier entier
	# 3.a -> Pour des images comprenant des courbes :
	  for i in *.tif ; do 
	    autotrace \
	  	  -background-color=FFFFFF \
	  	  -color-count 2 \
	  	  "$i" -output-file="${i%.*}.svg" ; 
	  done
	# 3.b -> Pour des images sans courbes :
	  for i in *.tif ; do 
	  	autotrace \
	  	  -background-color=FFFFFF \
	  	  -corner-threshold 360 \
	  	  -color-count 2 \
	  	  "$i" -output-file="${i%.*}.svg" ; 
	  done
	# 4 -> Renommer le dossier entier de 1.svg à 26.svg
	  a=1 
	  for i in *.svg; do
	    new=$(printf "%2d.svg" ${a})
	    mv ${i} ${new}
	    let a=a+1
	   done
	# 5 -> Créer un zip : 
	  zip svg.zip *.svg 
 </pre>


Auparavant ,trois méthodes ont été expérimentées en utilisant la libraire <a href="http://code.andreaskoller.com/libraries/fontastic/" target="_blank">Fontastic</a> : <br/>
1 - La méthode getVertex() (vector2.pde), ne permet pas de récupérer les courbes ;<br/>
2 - Le parsing du XML (svgReader.pde), récupère toutes les données (vectors et points de contrôle) mais les restitue   approximativement ;<br/>
3 - L'usage de la librairie <a href="http://www.ricardmarxer.com/geomerative/" target="_blank">Geomerative</a> (SVGtoTTF.pde), c'est la méthode la plus concluante. Néanmoins celle-ci crée un points de vecteur par pixel pour les svg contenant des courbes. Cela rend le processus laborieux et le fichier de sortie volumineux.<br/><br/>




  
To do :
=======
• Inverser et centrer les glyphes, voir screenshot 3. (une solution temporaire est utilisée en inversant les svg en amont) ;<br/>
• Empécher de nommer la fonte avec un nom existant (pour l'archivage) ;<br/>
• Messages d'erreur si mauvaise manip ;<br/>
• Prendre en charge les autres formats de compression ;<br/>
• Prendre en charge les alphabets incomplets ;<br/>
• Prendre en charge les fontes à chasse variable ;<br/>

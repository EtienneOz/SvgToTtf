SvgToTtf
========

Générer un fichier .ttf à partir de .svg .<br/><br/>

Utilisation du php pour créer un fichier svg font contenant chaque caractère qui est ensuite converti en ttf via l'api de <a href="http://onlinefontconverter.com/" target="_blank">Online Font Converter</a>.<br/>
une version en ligne est disponible à l'adresse <a href="http://etienneozeray.fr/svg2ttf/" target="blank">http://etienneozeray.fr/svg2ttf/</a>.<br/>
/!\ Les svg ne doivent comporte qu'une balise \<path\> comprenant un attribut 'd' contenant l'ensemble des points. Ils doivent aussi être inversés verticalement.
A partir de fichiers tiff, il est possible d'automatiser le processus via le terminal :<br/>
Installer <a href="http://imagemagick.org/" target="_blank">ImageMagick</a> et <a href="http://autotrace.sourceforge.net/">Autotrace</a> puis dans le terminal, taper :<br/>
<code>cd chemin/vers/le/dossier</code><br/>
<code># flip les images</code><br/>
<code>  mogrify -flip  *.tif</code><br/>
<code># Vectoriser le dossier entier</code><br/>
<code># Pour des images comprenant des courbes :</code><br/>
<code>  for i in *.tif ; do autotrace -background-color=FFFFFF -color-count 2 "$i" -output-file="${i%.*}.svg" ; done</code><br/>
<code># Pour des images sans courbes :</code><br/>
<code>  for i in *.tif ; do autotrace -background-color=FFFFFF -corner-threshold 360 -color-count 2 "$i" -output-file="${i%.*}.svg" ; done</code><br/>
<code># Renommer le dossier entier de 1.svg à 26.svg</code><br/>
<code>  a=1 </code><br/>
<code>  for i in *.svg; do</code><br/>
<code>    new=$(printf "%2d.svg" ${a}) #04 pad to length of 4</code><br/>
<code>    mv ${i} ${new}</code><br/>
<code>    let a=a+1</code><br/>
<code>  done</code><br/>
<br/><br/>

Auparavant ,trois méthodes ont été expérimentées en utilisant la libraire <a href="http://code.andreaskoller.com/libraries/fontastic/" target="_blank">Fontastic</a> : <br/>
1 - La méthode getVertex() (vector2.pde), ne permet pas de récupérer les courbes ;<br/>
2 - Le parsing du XML (svgReader.pde), récupère toutes les données (vectors et points de contrôle) mais les restitue   approximativement ;<br/>
3 - L'usage de la librairie <a href="http://www.ricardmarxer.com/geomerative/" target="_blank">Geomerative</a> (SVGtoTTF.pde), c'est la méthode la plus concluante. Néanmoins celle-ci crée un points de vecteur par pixel pour les svg contenant des courbes. Cela rend le processus laborieux et le fichier de sortie volumineux.<br/><br/>




  
To do :
=======
• Inverser et centrer les glyphes, voir screenshot 3. (une solution temporaire est utilisée en inversant les svg en amont) ;<br/>
• Prendre en charge tant les alphabets incomplets qu'entiers ;<br/>
• Prendre en charge les fontes à chasse variable ;

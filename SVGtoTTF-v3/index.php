<!--

###########################################################################
###########################################################################
###                                                                     ### 
###   S V G  TO  T T F                                                  ### 
###   ================                                                  ### 
###   Transformer une suite de SVG en SVG font puis en TTF.             ###
###   Licence GNU/GPL V.3 (https://www.gnu.org/copyleft/gpl.html).      ###
###   Copyleft Étienne Ozeray et Lucas Lejeune.                         ###
###   Merci à Alexis Pétard pour son coup de main (http://elaxis.fr/).  ###
###                                                                     ###  
###########################################################################
###########################################################################

-->


<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>svg2ttf</title>
    <style>
        body { font-family: monospace; margin: 15px; }
    </style>
</head>
	<body>
		<h1>
			S V G --> T T F
		</h1>
		<br/>
		<p>
			<form action="resultat.php" method="post" enctype="multipart/form-data">
				<p>
				    1 --> Nom de la fonte :
					<input type="text" name="nom" value="SansTitre" required />
				</p>
				<p>
					2 --> Définir le crénage :
					<input type="text" name="crenage" value="510" required />
				</p>
				<p>
					3 --> Définir la hauteur :
					<input type="text" name="hauteur" value="400" required />
				</p>
				<p>
	            	4 --> Upload des fichiers SVG :
	   				<input type="file" id="file" name="files[]" multiple="multiple" />
	   				<br/><br/>
	            	5 --> <input type="submit" value="Clique !" />
	            </p>
			</form>
	    </p>
	
	</body>
</html>
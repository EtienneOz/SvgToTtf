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
	    <title>SVG</title>
	    <style>
	        body 	   { font-family: 'luxi'; margin: 15px; font-size:80%; }
	    	@font-face { font-family:'luxi'; src: url(fontface/LuxiMono.ttf);  }
    		@font-face { font-family: 'luxiItalic'; src: url(fontface/LuxiMono-Oblique.ttf); }
        	a 		   { text-decoration:none; padding-bottom: 2px; border-bottom: 1px solid black; color:black; font-family:'luxiItalic'; }
        	#retour	   { position:fixed; left:15px; bottom:15px; }
	    </style>
	</head>
	<body>		
	    <?php      
		
			// Debug
			//ini_set('display_errors','1');

	        $titre   = htmlspecialchars($_POST['nom']); 			// ## Titre de la fonte
	        $crenage = htmlspecialchars($_POST['crenage']);       	// ## Définir le crénage
	        $hauteur = htmlspecialchars($_POST['hauteur']);       	// ## Définir la hauteur     

			// Vérifier les fichiers envoyés
			$valid_formats = array("zip");
			$max_file_size = 1000000 ; //100 kb
			$path = "uploads/"; // Upload directory
			$count = 0;
			
			if(isset($_POST) and $_SERVER['REQUEST_METHOD'] == "POST"){
				// Loop $_FILES to execute all files
				foreach ($_FILES['files']['name'] as $f => $name) {     
				    if ($_FILES['files']['error'][$f] == 4) {
				    	echo 'errrrrrrrror';
				        continue; // Skip file if any error found
				    }	       
				    if ($_FILES['files']['error'][$f] == 0) {	           
				        if ($_FILES['files']['size'][$f] > $max_file_size) {
				            $message[] = "$name is too large!.";
				            continue; // Skip large files
				        }
						elseif( ! in_array(pathinfo($name, PATHINFO_EXTENSION), $valid_formats) ){
							$message[] = "$name is not a valid format";
							continue; // Skip invalid file formats
						}
				        else{ // No error found! Move uploaded files 
				            if(move_uploaded_file($_FILES["files"]["tmp_name"][$f], $path.$_POST['nom'].'.zip'))
				            echo '--> le fichier ' . $name . ' est uploadé.<br/>';
				            $count++; // Number of successfully uploaded file
				        }
				    }
				}
			}

			// Extraire le zip
			exec('unzip uploads/'.$titre.'.zip -d uploads/unzip/');
			echo '--> Le fichier est décompressé !<br/>';

	
	        // Construction du Svg Font
   	
	        $lettres = array(1 => 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 
	                              'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z');
	                              
	                              
	        $xml = '<?xml version="1.0" standalone="no"?>
	            <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd" >
	            <svg xmlns="http://www.w3.org/2000/svg">
	            <metadata>
	                Copyright : Etienne Ozeray et Lucas Lejeune, Brussels 2014
	                </metadata>
	            <defs>';
	        $xml .='<font id="' . $titre . '" horiz-adv-x="' . $crenage . '" >';
	        $xml .='<font-face font-family="' . $titre . '" font-weight="regular" units-per-em="' . $hauteur . '"  />';
	        $xml .='<missing-glyph horiz-adv-x="' . $crenage . '" />';
	        $xml .='<glyph unicode=" " horiz-adv-x="' . $crenage . '" />';
	        $xml .='<glyph unicode="&#x09;" horiz-adv-x="' . $crenage . '" />';
	        $xml .='<glyph unicode="&#xa0;" horiz-adv-x="' . $crenage . '" />';
	        
	        // Parsing du svg
	        for ($i = 1; $i <= 26; $i++) {
          		$lettre = file_get_contents('uploads/unzip/' . $i . '.svg');
	            $debut = strrpos($lettre,'d=');
	            $attrD = substr($lettre, $debut);
	            $coordonees = str_replace("</svg>","",$attrD);
	            //print_r( '<p> Lettre ' . $lettres[$i] . ' ----> ' . $coordonees . '</p>');
	            $xml .='<glyph unicode="' . $lettres[$i] . '" horiz-adv-x="'.$crenage.'" '.$coordonees;
	        }
	        $xml .='</font></defs></svg>';
	        
	        $file = $titre.'.svg';
	        file_put_contents('svgFontes/'.$file, $xml);
	        echo '--> ' . $titre . '.svg créé <br/>';
	
			// Conversion du svg font en ttf,
			// Online font converter API (http://onlinefontconverter.com/)
	        require_once 'unirest-php-master/lib/Unirest.php';
	        $src = 'svgFontes/' .$titre.'.svg';
	        $des = 'ttf/'.$titre.'.tar.gz' ;
	        
	        $response = Unirest::post(
	          "https://ofc.p.mashape.com/directConvert/",
	          array(
	            "X-Mashape-Authorization" => "UyZ767DPfreAqKEH1xUbCBkM5uIxlmjN"
	          ),
	          array(
	            "file" => "@".$src,
	            "format" => "ttf"
	          )
	        );
	        
			$res = $response -> __get( 'body' ) ;
			if( isset($res) ) {
				file_put_contents( $des, $res )    ;
				echo '--> ' .$titre. '.tar.gz  créé <br />'     ;
			}
		
			//extraire le .tar.gz et le déplacer dans le dossier de stockage
			$p = new PharData('ttf/'.$titre.'.tar.gz');
			$p->decompress(); 
			$phar = new PharData('ttf/'.$titre.'.tar');
			$phar->extractTo('ttf/');
			echo '--> ' .$titre.'.tar.gz décompressé, la fonte est prête !';
			copy('./ttf/onlinefontconverter.com/converted-files/' .$titre. '.ttf', './ttf/stock/' .$titre. '.ttf');
			
			
			//supprimer les fichiers créés sauf le ttf
			for ($j = 1 ; $j <= 26 ; $j++) {
				unlink('uploads/unzip/'.$j.'.svg');
			}
			
			unlink('uploads/'.$titre.'.zip');
			unlink('svgFontes/'.$titre.'.svg');
			unlink('ttf/'.$titre.'.tar.gz');
			unlink('ttf/'.$titre.'.tar');
			unlink('ttf/onlinefontconverter.com/converted-files/'.$titre.'.ttf');
			unlink('ttf/onlinefontconverter.com/README.txt');
			rmdir('ttf/onlinefontconverter.com/converted-files');
			rmdir('ttf/onlinefontconverter.com');
			
		?>
		<br/>
		<br/>
		<!-- Télécharger le fichier -->
		<a href="<?php echo 'ttf/stock/' .$titre. '.ttf' ?>">Télécharger <?php echo $titre. '.ttf'?> !</a>
		<a href="index.php" id="retour"> &lt;-- Retourner au formulaire </a>
	</body>
</html>
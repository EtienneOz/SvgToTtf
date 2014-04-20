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
</head>
<body>
    <?php      

            $lettres = array(0 => 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 
                                  'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z');



        // Construction du Svg Font
        $titre = "Beta2";        // Titre de la fonte
        $crenage = "511";       // Définir le crénage
        $hauteur = "900";       // Définir la hauteur
        $xml = '<?xml version="1.0" standalone="no"?>
            <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd" >
            <svg xmlns="http://www.w3.org/2000/svg">
            <metadata>
                Copyright : Etienne Ozeray et Lucas Leujeune, Brussels 2014
                </metadata>
            <defs>';
        $xml .='<font id="' . $titre . '" horiz-adv-x="' . $crenage . '" >';
        $xml .='<font-face font-family="' . $titre . '" font-weight="regular" units-per-em="' . $hauteur . '" x-height="310" ascent="161" descent="742" />';
        $xml .='<missing-glyph horiz-adv-x="' . $crenage . '" />';
        $xml .='<glyph unicode=" " horiz-adv-x="' . $crenage . '" />';
        $xml .='<glyph unicode="&#x09;" horiz-adv-x="' . $crenage . '" />';
        $xml .='<glyph unicode="&#xa0;" horiz-adv-x="' . $crenage . '" />';
        // Parsing du svg
        for ($i = 0; $i <= 25; $i++) {
            $lettre = file_get_contents('data/' . $i . '.svg');
            $debut = strrpos($lettre,'d=');
            $attrD = substr($lettre, $debut);
            $coordonees = str_replace("</svg>","",$attrD);
            print_r( '<p> Lettre ' . $lettres[$i] . ' ----> ' . $coordonees . '</p>');
            $xml .='<glyph unicode="' . $lettres[$i] . '" horiz-adv-x="'.$crenage.'" '.$coordonees;
        }
        $xml .='</font></defs></svg>';
        $file = $titre.'.svg';
        file_put_contents($file, $xml);
        echo "### DONE ###";

    ?>
</body>
</html>
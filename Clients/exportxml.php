<?php
include('connexion.php');
$file= fopen("panneaudispo.xml", "w+");

$_xml ="<?xml version='1.0' encoding='UTF-8' ?>\n";
$_xml .="<panneaux>\n";

    $result= mysqli_query($link, "select adresse, coordonneesGps, prixLocation, libelle, ville from panneau p, categorie c, ville v where p.idcat=c.idcat and p.idville=v.idville and etat =0");

    while($row = mysqli_fetch_assoc($result)){;
    $_xml .="\r<panneau>\r\n";
        $_xml .="\t<adresse>". $row["adresse"] ."</adresse>\r";
        $_xml .="\t<coordgps>". $row["coordonneesGps"] ."</coordgps>\r";
        $_xml .="\t<ville>". $row["ville"] ."</ville>\r";
        $_xml .="\t<libelle>". $row["libelle"] ."</libelle>\r";
        $_xml .="\t<prixlocation>". $row["prixLocation"] ."</prixlocation>\r";

        $_xml .="</panneau>\r\n";
    }
    $_xml .="\r</panneaux>";
fwrite($file, $_xml);
fclose($file);
echo "XML has been written. <a href=\"panneaudispo.xml\">View the XML.</a>";

?>
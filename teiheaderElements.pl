use warnings ;
use strict ;

open (my $fichier , "< OE_31.xml") or die "impossible d'ouvrir" ;
open (my $sortie, "> OE_31.0.xls") ;
while (my $ligne = <$fichier>) {

	if ($ligne =~ m/(<[^>]+>)/) {
		print $sortie "$1 \n" ;
		last if($ligne =~ /<\/teiHeader>/);
		# if ($ligne =~ /<\/teiHeader>/) { Ceci est une aute méthode d'utiliser la fonction 'last'
			# last;
		#}
	}
}

close ($sortie) ;
close ($fichier) ;

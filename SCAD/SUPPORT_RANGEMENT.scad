ep1=3;
ep2=ep1+5;
hauteur=34;
largeur=25;
r_trou=4;


module support_rangement(){
	difference(){
		cube([hauteur,largeur,ep2]);

		translate([-5,-5,ep1]){cube([hauteur,largeur+10,ep2]);}

		hull(){
			translate([7,largeur/2,-5]){cylinder(r=r_trou, h=10, $fn=50);}
			translate([hauteur-10,largeur/2,-5]){cylinder(r=r_trou, h=10, $fn=50);}
			translate([hauteur/2-2.5,largeur/2+5,-5]){cylinder(r=r_trou, h=10, $fn=50);}
			translate([hauteur/2-2.5,largeur/2-5,-5]){cylinder(r=r_trou, h=10, $fn=50);}

		}
	}

}
support_rangement();
longueur=15;
largeur=40;
h1=8;
r_m4=2.5;


module support(){
	difference(){
	cube([longueur,largeur,h1]);

	translate([-5,largeur/2,h1/2]){cube([longueur+20,largeur,h1]);}

	//trous pour fixation
	translate([longueur/2,largeur/4,-5]){cylinder(h = 20, r = r_m4, $fn=100);}
	translate([longueur/2,largeur/4,-5]){cylinder(h = 10, r = 5, $fn=100);}

	}
	//cônes pour collage endstop
	translate([longueur/2,35,h1/2]){cylinder(h = 1, r1 = 1, r2 = 0.6, $fn=50);}
	translate([longueur/2,25,h1/2]){cylinder(h = 1, r1 = 1, r2 = 0.6, $fn=50);}
}
support();
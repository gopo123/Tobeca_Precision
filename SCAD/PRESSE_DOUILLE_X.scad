r_douille=8.2;
r_m3=2;
r_ecrou_m3=3.3;
r_arbre=4.4;
height=25;

module presse_douille(){
	difference(){
		cube([23,15,height]);
		
		//passage douille
		translate([14,0,-5]){cylinder(r=r_douille, h=height+10, $fn=50);}

		//extrusions principales
		translate([14,-2,-5]){cube([15,7.7,height+10]);}
		translate([1,-2,-5]){cube([15,3,height+10]);}
		translate([14,15,-5]){rotate([0,0,-40])cube([15,15,height+10]);}

		//trou pour réglage endstop Z
		translate([10,11,-5]){cylinder(r=r_m3, h=height+10, $fn=50);}
		translate([10,11,height-5]){cylinder(r=r_ecrou_m3, h=height, $fn=6);}

		//extrusion pour passage de fin de l'arbre
		translate([-height,0,height/2]){rotate([0,90,0])cylinder(r=r_arbre+1, h=height+1, $fn=50);}

		//trou latéral pour vissage
		translate([3.5,0,height/2]){rotate([0,90,90])cylinder(r=r_m3, h=height, $fn=50);}

	}
}
presse_douille();
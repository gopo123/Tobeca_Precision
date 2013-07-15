r_arbre=4.4;
r_m3=2;
r_ecrou_m3=3.3;
r_m4=2.5;
r_tete_m4=4;

module plaque_moteur(){
	difference(){
		cube([43,35,5]);
		translate([12.5,4.5,-2]){cylinder(r=r_m3, h=10, $fn=50);}
		translate([38.5,4.5,-2]){cylinder(r=r_m3, h=10, $fn=50);}
		translate([12.5,30.5,-2]){cylinder(r=r_m3, h=10, $fn=50);}
		translate([38.5,30.5,-2]){cylinder(r=r_m3, h=10, $fn=50);}
		translate([25.5,17.5,-2]){cylinder(r=13, h=10, $fn=50);}
	}
}
module fix_arbre(){
	difference(){
		cube([20,20,20]);
		translate([0,0,10]){cube([15,20,15]);}
		translate([10,10,15]){rotate([0,90,0])cylinder(r=r_m4, h=20, $fn=50);}
		translate([10,10,15]){rotate([0,90,0])cylinder(r=r_tete_m4, h=7, $fn=50);}
		translate([10,10,-5]){cylinder(r=r_arbre, h=20, $fn=50);}
		translate([-5,3.5,5]){rotate([0,90,0])cylinder(r=r_m3, h=50, $fn=50);}
		translate([15,3.5,5]){rotate([0,90,0])cylinder(r=r_ecrou_m3, h=20, $fn=6);}
		translate([9.5,-5,-5]){cube([1,15,20]);}
	}
}
plaque_moteur();
translate([0,-20,0]){fix_arbre();}
translate([0,55,0]){mirror([0,1,0]){fix_arbre();}}
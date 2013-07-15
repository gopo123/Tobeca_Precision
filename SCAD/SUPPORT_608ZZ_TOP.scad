r_m3=2;


module plaque_608ZZ(){
	difference(){
		cube([35,35,8]);
		translate([4.5,4.5,-2]){cylinder(r=r_m3, h=15, $fn=50);}
		translate([4.5,30.5,-2]){cylinder(r=r_m3, h=15, $fn=50);}
		translate([30.5,4.5,-2]){cylinder(r=r_m3, h=15, $fn=50);}
		translate([30.5,30.5,-2]){cylinder(r=r_m3, h=15, $fn=50);}
		translate([17.5,17.5,-2]){cylinder(r=11.25, h=15, $fn=50);}
	}
}
plaque_608ZZ();
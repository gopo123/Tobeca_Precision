r_tube=6.5;
r_tige_fi=5;
height=30;
ecart_tube=55;
dec_tige=2.5;
dist_bord=12.5;
height_trou=5;
l_supbob=100;
height_supbob=10;
r_trou_m3=2;
r_vide=5;

module fixation(){
difference(){
	cube([53,28,20]);

	translate([5,-5,5]){cube([43,40,height]);}
	translate([43,-5,5.4]){rotate([0,5,0])cube([5,40,height]);}

	translate([-5,14,12]){rotate([0,90,0])cylinder(h = 10, r = r_trou_m3, $fn=100);}

	translate([-5,-10,7]){rotate([-20,0,0])cube([10,10,height]);}
	translate([-5,28,7]){rotate([20,0,0])cube([10,10,height]);}
	
	hull(){
	translate([10,14,-5]){cylinder(h = 20, r = 5, $fn=100);}
	translate([43,14,-5]){cylinder(h = 20, r = 5, $fn=100);}
	translate([26.5,18,-5]){cylinder(h = 20, r = 5, $fn=100);}
	translate([26.5,10,-5]){cylinder(h = 20, r = 5, $fn=100);}
	}
}
}

module support_bobine(){
difference(){
	translate([0,0,height_supbob]){rotate([0,90,0])cylinder(h = l_supbob, r = 14, $fn=100);}
	translate([0,-40,20]){cube([110,80,15]);}
	translate([0,-40,-15]){cube([110,80,15]);}
	translate([5,0,-1]){cylinder(h = height, r = r_trou_m3, $fn=100);}
	translate([65,0,-1]){cylinder(h = height, r = r_trou_m3, $fn=100);}
	translate([95,0,-1]){cylinder(h = height, r = r_trou_m3, $fn=100);}
	//vide1
	translate([15,0,-1]){cylinder(h = height, r = r_vide, $fn=100);}
	translate([55,0,-1]){cylinder(h = height, r = r_vide, $fn=100);}
	translate([15,-5,-1]){cube([40,10,height]);}
	//vide2
	translate([75,0,-1]){cylinder(h = height, r = r_vide, $fn=100);}
	translate([85,0,-1]){cylinder(h = height, r = r_vide, $fn=100);}
	translate([75,-5,-1]){cube([10,10,height]);}
}
}
fixation();
translate([53,14,0]){support_bobine();}
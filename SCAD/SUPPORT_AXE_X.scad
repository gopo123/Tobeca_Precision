r_douille=8.2;
r_m3=2;
r_ecrou_m3=3.3;
r_arbre=4;
r_ecrou_m8=7.7;
r_m8=4.5;
h_ecrou_m8=8;
height=25;
height_pe=25;
ep_trou_m8=2;

module support_axe_x(){
	difference(){
		union(){
			cube([34.5,79,height]);
			translate([-7.5,18.5,0]){cube([7.5,42,4]);}
			translate([34.5,24.5,0]){cube([20,30,height_pe]);}
		}
		//trous pour serrage des arbres
		translate([5.5,5,-5]){cylinder(r=r_m3, h=height+10, $fn=50);}
		translate([5.5,74,-5]){cylinder(r=r_m3, h=height+10, $fn=50);}
		translate([5.5,5,height-3]){cylinder(r=r_ecrou_m3, h=height, $fn=6);}
		translate([5.5,74,height-3]){cylinder(r=r_ecrou_m3, h=height, $fn=6);}

		//trous pour passage des arbres
		translate([-5,12,height/2]){rotate([0,90,0])cylinder(r=r_arbre, h=17.5, $fn=50);}
		translate([-5,67,height/2]){rotate([0,90,0])cylinder(r=r_arbre, h=17.5, $fn=50);}
		translate([-5,-5,12]){cube([17.5,20,1]);}
		translate([-5,67,12]){cube([17.5,20,1]);}

		//trous pour douilles
		translate([25.5,12,-5]){cylinder(r=r_douille, h=50, $fn=50);}
		translate([25.5,67,-5]){cylinder(r=r_douille, h=50, $fn=50);}
		translate([11,0,-5]){cube([50,12,height*2]);}
		translate([11,67,-5]){cube([50,12,height*2]);}
		translate([25.5,0,-5]){cube([50,16,height*2]);}
		translate([25.5,63,-5]){cube([50,16,height*2]);}

		//trou moteur
		translate([13.5,39.5,-5]){cylinder(r=16, h=50, $fn=100);}
		translate([-46.5,18.5,4]){cube([50,42,height*2]);}
		translate([0,23.5,4]){cube([13.5,32,height*2]);}
		translate([29,24,-5]){cylinder(r=r_m3, h=50, $fn=50);}
		translate([29,55,-5]){cylinder(r=r_m3, h=50, $fn=50);}
		translate([-2,24,-5]){cylinder(r=r_m3, h=50, $fn=50);}
		translate([-2,55,-5]){cylinder(r=r_m3, h=50, $fn=50);}
		translate([0,18.5,-5]){rotate([0,0,160])cube([15,15,height]);}
		translate([0,60.5,-5]){rotate([0,0,110])cube([15,15,height]);}
		

		//trous pour serrage douilles
		translate([15,0,height/2]){rotate([0,90,90])cylinder(r=r_m3, h=100, $fn=50);}
		translate([15,19,height/2]){rotate([0,90,90])cylinder(r=r_ecrou_m3, h=10, $fn=6);}
		translate([15,50,height/2]){rotate([0,90,90])cylinder(r=r_ecrou_m3, h=10, $fn=6);}

		//passage pour écrou M8
		translate([42,39.5,-5]){cylinder(r=r_ecrou_m8, h=h_ecrou_m8+5, $fn=6);}
		translate([42,39.5,-5]){cylinder(r=r_m8, h=50, $fn=50);}
		translate([42,39.5,h_ecrou_m8+ep_trou_m8]){cylinder(r=r_ecrou_m8+0.3, h=50, $fn=6);}

		//trous pour blocage écrou M8 inférieur
		translate([38,39.5-9,-5]){cylinder(r=1.5, h=50, $fn=50);}
		translate([38,39.5+9,-5]){cylinder(r=1.5, h=50, $fn=50);}

		//affinage passage pour écrou M8
		translate([34.5,24.5,-5]){rotate([0,0,-70])cube([50,32,height*2]);}
		translate([34.5,54.5,-5]){rotate([0,0,-20])cube([50,32,height*2]);}
	}
}

support_axe_x();
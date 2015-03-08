//!OpenSCAD

module example003()
{
	difference() {
		union() {
			cube([44, 90, 12], center = true);
            translate([22,0,0]){
                cube([2, 70, 8], center = true);
            }
            translate([-22,-15,0]){
                cube([2, 50, 8], center = true);
            }
            translate([0,-25,6]){
			    cube([35, 15, 2], center = true);   
            }
		}
        translate([-11.5,33,0]){
	        cube([23, 25, 12], center = true);
        }
        translate([0,0,0]){
		    cube([46, 12, 5], center = true);
	    }
        translate([0,-15,0]){
            cube([46, 12, 5], center = true);
	    }
        translate([0,-30,0]){
            cube([46, 12, 5], center = true);
        }
        translate([11.5,35,0]){
            rotate([-30,0,0]){
                cube([46, 40, 5], center = true);
            }
        }
	}
}

example003();
//!OpenSCAD

module repressor_blade()
{
	difference() {
		union() {
			cube([80, 30, 45], center = true);
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
        translate([0,-13,-5]){
            cube([80, 5, 35], center = true);
        }
        rotate([-60,0,0]){
                cube([80, 55, 2], center = true);
        }
	}
}

repressor_blade();
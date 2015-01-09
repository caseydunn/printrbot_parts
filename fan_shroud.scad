//!OpenSCAD
//
// printrbot LC toolless fan shroud
//
//snap fit for part and hotend cooling
//

module fanshroud()
{
    difference(){ //subtract out side holes and wire path
    union(){ //add lip to sides
    difference(){ // cut extruter and air path out of cube
        cube([62, 34, 50]);
        //cutout center
        translate([2.5,2,3]){
            cube([57.5, 35, 55]);
        }
        //cutout bottom left
        translate([2.5,20,0]){
            cube([7.5, 32, 50]);
        }
        //cutout bottom right
        translate([52.5,20,0]){
            cube([7.5, 32, 50]);
        }
        //cutout fan
        translate([31,0,25]){
            rotate([0,90,90])
            cylinder(h=5, r=20);
        }
        translate([11.5,2,5]){
            cube([40, 30, 50]);
        }
        //cutout fan screws
        translate([11,0,5]){
            rotate([0,90,90])
            cylinder(h=50, r=2);
        }
        translate([11,0,45]){
            rotate([0,90,90])
            cylinder(h=50, r=2);
        }
        translate([52,0,5]){
            rotate([0,90,90])
            cylinder(h=50, r=2);
        }
        translate([52,0,45]){
            rotate([0,90,90])
            cylinder(h=50, r=2);
        }
        //cutout nozzle
        translate([31,17,16]){
            sphere(r=20);
        }
    }
    //add lip
    translate([58,20,32.5]){
        rotate([0,90,0])
        cylinder(h=2, r1=6, r2=7.5);
    }
    translate([2.5,20,32.5]){
        rotate([0,90,0])
        cylinder(h=2, r1=7.5, r2=6.5);
    }
    }
    //cutout side holes
    translate([0,20,32.5]){
        rotate([0,90,0])
        cylinder(h=62, r=5);
    }
    //cutout wire notch
    translate([0,16,31]){
        cube([5,20,20]);
    } translate([58,16,31]){
        cube([5,20,20]);
    }
    }
}

//fan cover
//
module fan_cover(){
	union(){
	difference(){
		translate([0,-12,0]){
		cube([62,2,50]);
		}
		//cutout fan
        translate([31,-12,25]){
            rotate([0,90,90])
            cylinder(h=5, r=20);
        }
        //cutout fan screws
        translate([11,-12,5]){
            rotate([0,90,90])
            cylinder(h=50, r=2);
        }
        translate([11,-12,45]){
            rotate([0,90,90])
            cylinder(h=50, r=2);
        }
        translate([52,-12,5]){
            rotate([0,90,90])
            cylinder(h=50, r=2);
        }
        //translate([52,-12,45]){
        //    rotate([0,90,90])
        //    cylinder(h=50, r=2);
        //}
	}//difference
		translate([0,-12,0])
			cube([2,12,50]);
		translate([60,-12,0])
			cube([2,12,50]);
      translate([52,-10,45]){
          sphere(r=2);
		}
		fangrill();
  

	}//union

}

module fangrill(){

	translate([31,-12,25]){
		rotate([0,90,90])
      cylinder(h=2, r=5);
	}
	translate([30.5,-12,0]){
		cube([1,2,45]);
	}

}

//**************************
// create the object

fanshroud();
fan_cover();
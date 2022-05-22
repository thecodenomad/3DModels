//
// Base

base_thickness = 10;
base_length = 170;

//rotate([90,0,0]){
    difference(){
        // Base 
        translate([-5,210,-5]){
            cube([85,base_thickness,base_length]);
        }

        // Bottom Rails
        translate([0,210,0]){
            cube([75.25,base_thickness,3.25]);
        }
        translate([70,210,0]){
            cube([5.25,base_thickness,10.25]);
        }
        translate([0,210,0]){
            cube([5.25,base_thickness,10.25]);
        }

        // Top Rails
        translate([0,210,157]){
            cube([75.25,base_thickness,3.25]);
        }
        translate([70,210,150]){
            cube([5.25,base_thickness,10.25]);
        }
        translate([0,210,150]){
            cube([5.25,base_thickness,10.25]);
        }

        // Left Stabalizer screw hold
        translate([19.25,215,0]){
            rotate([180,0,0]){
                cylinder(5, 1.65, 3.375);
            }
        }

        // Left Stabalizer screw hold
        translate([57.75,215,0]){
            rotate([180,0,0]){
                cylinder(5, 1.65, 3.375);
            }
        }

        // Right Stabalizer screw hold
        translate([19.25,215, 165]){
            rotate([180,0,0]){
                cylinder(5, 3.375, 1.65);
            }
        }

        // Right Stabalizer screw hold
        translate([57.75,215,165]){
            rotate([180,0,0]){
                cylinder(5, 3.375, 1.65);
            }
        }

        // Cable Hole
        translate([10,210,10]){
            cube([20,10,20]);    
        }

        // Fan Mount
        translate([10,215,100]){
            cube([40,5,40]);    
        }

        translate([13.75,218,103.75]){
            rotate([90,0,0]){
                cylinder(12,2,2);
            }
        }

        translate([45.75,218,135.75]){
            rotate([90,0,0]){
                cylinder(12,2,2);
            }
        }

        translate([13.75,218,135.75]){
            rotate([90,0,0]){
                cylinder(12,2,2);
            }
        }

        translate([45.75,218,103.75]){
            rotate([90,0,0]){
                cylinder(12,2,2);
            }
        }

        translate([30,218,120]){
            rotate([90,0,0]){
                cylinder(18,18,18);
            }
        }

        // Cable gutter for fan
        translate([-10,215,107]){
            cube([20,5,3.25]);
        }

        // Cable notch for fan
        translate([-5,208,107]){
            cube([5,15,3.25]);
        }

    }
//}




/*difference(){
        translate([30,220,20]){
            cube([20,50,120]);    
        }

        translate([30,220,40]){
            cube([10,30,80]);    
        }
    }*/
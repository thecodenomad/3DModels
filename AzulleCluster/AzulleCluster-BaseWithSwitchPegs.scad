//
// Base

base_thickness = 10;
base_length = 170;

rotate([90,0,0]){
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
    }

// Ethernet switch (Trendnet) Mount Pegs
hold_x = 35;
hold_y = base_thickness + 213;
hold_z = 10.25+20.8;
hold_offset = 99;

// Switch holds
translate([hold_x, hold_y-1.8, hold_z]){
    rotate([90,0,0]){
        cylinder(1.8, 2.25, 2.25);
    }
}
translate([hold_x,hold_y,hold_z]){
    rotate([90,0,0]){
        cylinder(1.8, 3.9, 3.9);
    }
}


// Switch holds
translate([hold_x, hold_y-1.8, hold_z+hold_offset]){
    rotate([90,0,0]){
        cylinder(1.8, 2.25, 2.25);
    }
}
translate([hold_x,hold_y,hold_z+hold_offset]){
    rotate([90,0,0]){
        cylinder(1.8, 3.9, 3.9);
    }
}
}
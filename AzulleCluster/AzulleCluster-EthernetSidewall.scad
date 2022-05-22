// Ethernet Side wall

// Want at lest 2 times the width to support
base_x = 75;

// top Stabalizer
translate([0, 10, 0]){
    cube([75,3,25]);
}

difference(){

// Define the base
cube([base_x, 207,3]);

    // Top Stabalizer screw hold
    translate([19.25,4,3]){
        rotate([180,0,0]){
            cylinder(4, 1.65, 1.65);
        }
    }


    // Top Stabalizer screw hold
    translate([57.75,4,3]){
        rotate([180,0,0]){
            cylinder(4, 1.65, 1.65);
        }
    }


    // Bottom Stabalizer screw hold
    translate([19.25,203,3]){
        rotate([180,0,0]){
            cylinder(4, 1.65, 1.65);
        }
    }


    // Bottom Stabalizer screw hold
    translate([57.75,203,3]){
        rotate([180,0,0]){
            cylinder(4, 1.65, 1.65);
        }
    }

// Ethernet cord gap
translate([base_x/4, 10, 0]){
    cube([base_x/2, 180, 3]);
}

}


// Ethernet side Rails
cube([5,207,10]);
translate([70,0,0]){
    cube([5,207,10]);
}

// Bottom Stabalizer
translate([0, 194, 0]){
    cube([75,3,25]);
}
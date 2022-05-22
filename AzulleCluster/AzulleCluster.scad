
module open_top_box(size, wall=2, lid=false){
    // Form the dimensions of the outer box
    x2 = size[0] + wall*2;
    y2 = size[1] + wall*2;
    z2 = size[2] + wall*2;

    echo("Not building with lid");
    zWall = size[2] + wall*2;
    lid_offset = [wall, wall, wall];

    difference(){
        cube([x2,y2,z2]);
        translate(lid_offset){
            cube([size.x, size.y, zWall]);
        }       
    }
}

hdmi_x = 14;
hdmi_y = 4.5;
hdmi_z = 12;

// Want at lest 2 times the width to support
base_x = 75;

// Want at least 10mm space between them
base_y = hdmi_y*50;
base_z = 2;

offset_x = (base_x - hdmi_x)/2;
center_x = (base_x / 2) - ((hdmi_x + 4) / 2);
z_offset = 2;

/* Prototype base 
//cube([base_x, 40, .5]);

translate([0,14,0]){
    translate([center_x,2,0]){
        open_top_box(size=[hdmi_x, hdmi_y, 10]);
    }
}
/* End prototype base */


/*difference(){

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

}

slot_height = 85;
space_between = 35;

mount_y_offset = 25;
y_offset = mount_y_offset-14;

// top Stabalizer
translate([0, 10, 0]){
    cube([75,3,25]);
}


translate([0,mount_y_offset,z_offset]){
    // Mini-PC mount 1
    translate([center_x,2,0]){
        open_top_box(size=[hdmi_x, hdmi_y, hdmi_z], wall=2, lid=false);
    }
    // Mini-PC mount 2
    translate([center_x,2+space_between,0]){
        open_top_box(size=[hdmi_x, hdmi_y, hdmi_z], wall=2, lid=false);
    }
    // Mini-PC mount 3
    translate([center_x,2+space_between*2,0]){
        open_top_box(size=[hdmi_x, hdmi_y, hdmi_z], wall=2, lid=false);
    }

    // Mini-PC mount 4
    translate([center_x,2+space_between*3,0]){
        open_top_box(size=[hdmi_x, hdmi_y, hdmi_z], wall=2, lid=false);
    }

    // Mini-PC mount 5
    translate([center_x,2+space_between*4,0]){
        open_top_box(size=[hdmi_x, hdmi_y, hdmi_z], wall=2, lid=false);
    }
}

// 1st Mount
translate([5,y_offset,z_offset]){
    translate([5,11,0]){
        cube([16,2,slot_height]);
    }
    translate([5,27,0]){
        cube([16,2,slot_height]);
    }
    translate([5,11,0]){
        cube([2,18,slot_height]);
    }
}

// 2nd Mount
translate([5,y_offset+space_between,z_offset]){
    translate([5,11,0]){
        cube([16,2,slot_height]);
    }
    translate([5,27,0]){
        cube([16,2,slot_height]);
    }
    translate([5,11,0]){
        cube([2,18,slot_height]);
    }
}


// 3rd Mount
translate([5,y_offset+space_between*2,z_offset]){
    translate([5,11,0]){
        cube([16,2,slot_height]);
    }
    translate([5,27,0]){
        cube([16,2,slot_height]);
    }
    translate([5,11,0]){
        cube([2,18,slot_height]);
    }
}


// 4th Mount
translate([5,y_offset+space_between*3,z_offset]){
    translate([5,11,0]){
        cube([16,2,slot_height]);
    }
    translate([5,27,0]){
        cube([16,2,slot_height]);
    }
    translate([5,11,0]){
        cube([2,18,slot_height]);
    }
}


// 5th Mount
translate([5,y_offset+space_between*4,z_offset]){
    translate([5,11,0]){
        cube([16,2,slot_height]);
    }
    translate([5,27,0]){
        cube([16,2,slot_height]);
    }
    translate([5,11,0]){
        cube([2,18,slot_height]);
    }
}

// Rails for side-wall mount
cube([5,207,10]);
translate([70,0,0]){
    cube([5,207,10]);
}

// Bottom Stabalizer
translate([0, 194, 0]){
    cube([75,3,25]);
}*/

// Ethernet Side wall

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


//
// Base
/*
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

    // Cable Gutter Slot
    /*translate([65,210,71+z_offset]){
        cube([5.25,base_thickness,35.3]);
    }

    //Top Rail
    translate([70,210,71+z_offset]){
        cube([5.25,base_thickness,5.25]);
    }

    //Bottom Rail
    translate([70,210,71+z_offset+30+.3]){
        cube([5.15,base_thickness,5.15]);
    }*/

    /* Left Stabalizer screw hold
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

    // right Stabalizer screw hold
    translate([57.75,215,165]){
        rotate([180,0,0]){
            cylinder(5, 3.375, 1.65);
        }
    }
}

hold_x = 35;
hold_y = base_thickness + 213;
hold_z = 10.25+20.8;

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

hold_offset = 102;
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

}*/



//
// Cable Gutter
/*
difference(){
    translate([65,0,71+z_offset]){
        cube([5,205,35]);
    }

    //Slot 1
    translate([65,10,82.5+z_offset]){
        cube([5,15,10]);
    }

    //Slot 2
    translate([65,45,82.5+z_offset]){
        cube([5,15,10]);
    }

    //Slot 3
    translate([65,80,82.5+z_offset]){
        cube([5,15,10]);
    }

    //Slot 4
    translate([65,115,82.5+z_offset]){
        cube([5,15,10]);
    }

    //Slot 5
    translate([65,150,82.5+z_offset]){
        cube([5,15,10]);
    }


}

//Top Rail
translate([70,0,71+z_offset]){
    cube([5,205,5]);
}

//Bottom Rail
translate([70,0,71+z_offset+30]){
    cube([5,205,5]);
}
*/
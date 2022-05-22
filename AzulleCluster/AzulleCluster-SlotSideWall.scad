
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
}


module open_top_box(size, wall=2){
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
hdmi_y = 4.8;
hdmi_z = 12;

// Want at lest 2 times the width to support
base_x = 75;

// Want at least 10mm space between them
base_y = hdmi_y*50;
base_z = 2;

offset_x = (base_x - hdmi_x)/2;
center_x = (base_x / 2) - ((hdmi_x + 4) / 2);

// Define the base
cube([base_x, 50*hdmi_y,2]);

/* Prototype base 
//cube([base_x, 40, .5]);

translate([0,14,0]){
    translate([center_x,2,0]){
        open_top_box(size=[hdmi_x, hdmi_y, 10]);
    }
}
/* End prototype base */


translate([0,14,0]){
    // Mini-PC mount 1
    translate([center_x,2,0]){
        open_top_box(size=[hdmi_x, hdmi_y, hdmi_z], wall=2, lid=false);
    }
    // Mini-PC mount 2
    translate([center_x,2+50,0]){
        open_top_box(size=[hdmi_x, hdmi_y, hdmi_z], wall=2, lid=false);
    }
    // Mini-PC mount 3
    translate([center_x,2+100,0]){
        open_top_box(size=[hdmi_x, hdmi_y, hdmi_z], wall=2, lid=false);
    }
}

slot_height = 27;

// 1st Mount
translate([5,0,0]){
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
translate([5,50,0]){
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
translate([5,100,0]){
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
translate([5,100,0]){
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
translate([5,100,0]){
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
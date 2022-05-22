// Latches

module inner_latch(width=8,depth=2.5,height=5){
    difference(){
        cube([width,depth,height]);
        translate([0,0,1]){
            cube([width,depth-1,2.0]);
        }
        snap_lip(width=width, depth=depth, height=1.0);
    }
}

module inner_snap_lip(width=8,depth=3.0,height=2.0,x=0,y=0,z=0){

    points = [[0,0,0], [width,0,0], [width,depth,0],[0,depth,0],
                        [0,0,height],
                        [width,0,height]];
    
    faces = [[0,1,2,3],
                    [3,4,5,2],
                    [0,3,4],
                    [1,2,5],
                    [0,4,5,1]
    ];

    translate([x,y,z]){        
        hull(){
            polyhedron( points=points, faces=faces, convexity=1);
        }
    }
    
    translate([0,0,-.75]){
        cube([width,3,1.5]);
    }
}

module outer_snap(width=8,depth=2.0,height=2.0,x=0,y=0,z=0){

    points = [[0,0,0], [width,0,0], [width,depth,0],[0,depth,0],
                        [0,0,height],
                        [width,0,height]];
    
    faces = [[0,1,2,3],
                    [3,4,5,2],
                    [0,3,4],
                    [1,2,5],
                    [0,4,5,1]
    ];

    translate([x,y,z]){        
        hull(){
            polyhedron( points=points, faces=faces, convexity=1);
        }
    }
    
    translate([0,0,-1]){
        cube([width,15,1.0]);
    }
}



//translate([0,3,-2]){
//inner_latch();
//}
//inner_snap_lip();

module outer_latch_and_snap(x=0,y=0,z=0){
    translate([x,y,z]){
        translate([-10,-4,-10]){
            rotate([90,0,90]){
                translate([1,12,11]){
                    outer_snap(width=6);
                }
                translate([0,10,10]){
                    difference(){
                        cube([8,15,2]);
                        translate([.75,1.75,0]){
                            cube([6.5, 2.5,2]);
                        }
                       translate([.75,4,0]){
                            cube([6.5,11,1]);
                        }
                    }
                }
            }
        }
    }
}

outer_latch_and_snap();
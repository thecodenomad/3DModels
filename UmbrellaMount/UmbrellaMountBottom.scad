// 25.4mm is 1.25inch
scale = 25.4;
//z=2*scale;

z=3*scale;
x=6*scale;
y=6*scale;

// Ray's is .75 for radius_inner
radius_inner = .8*scale;
radius_outer = 1.35*scale;

zip_tie_radius_inner = .15*scale;
zip_tie_radius_outer = .3*scale;

module base(){
    translate([0,-3.50*scale,0]) cylinder(r=radius_outer,h=z,center=true);
    cube(size = [x,y,z], center = true);
}


module poleCutOut(){
    translate([0,-3.5*scale,.5*scale]) cylinder(r=radius_inner,h=z-.5*scale,center=true);    
}

module zipTieCutOut(){
    translate([0, 2.6*scale,-1*scale]) rotate(90,[0,1,0]) cylinder(r=zip_tie_radius_inner, h=7*scale,center=true);
    translate([0, 2.6*scale,0]) rotate(90,[0,1,0]) cylinder(r=zip_tie_radius_inner, h=7*scale,center=true);
    translate([0, 2.6*scale,1*scale]) rotate(90,[0,1,0]) cylinder(r=zip_tie_radius_inner, h=7*scale,center=true);
}

module cutOut(){
    translate([0,1*scale,0]) cube(size = [x-1*scale, y-.5*scale, z], center = true);
}

module prism(l, w, h){
   polyhedron(
           points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
           faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
           );
}

// The intention of this was to provide a low hanging stability support if the umbrella slides
module support(){
    translate([-3*scale,-3*scale,-3.5*scale]) rotate(90, [1,0,0]) prism(6*scale,5*scale,3*scale);
}

/*
// The problem with this part is that the print is difficult without supports
difference(){
    support();
    poleCutOut();
}*/

// Make the mount
difference(){
    base();
    cutOut();
    poleCutOut();
    zipTieCutOut();
}

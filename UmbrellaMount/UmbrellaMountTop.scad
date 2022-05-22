// 25.4mm is 1.25inch
scale = 25.4;
//z=2*scale;

z=2.25*scale;
x=6*scale;
y=6*scale;

radius_inner = .8*scale;
radius_outer = 1.35*scale;

zip_tie_radius_inner = .15*scale;
zip_tie_radius_outer = .3*scale;

module base(){
    translate([0,-3.50*scale,0]) cylinder(r=radius_outer,h=z,center=true);
    cube(size = [x,y,z], center = true);
}


module poleCutOut(){
    translate([0,-3.5*scale,0]) cylinder(r=radius_inner,h=z,center=true);    
}

module zipTieCutOut(){
    translate([0, 2.6*scale,-.5*scale]) rotate(90,[0,1,0]) cylinder(r=zip_tie_radius_inner, h=7*scale,center=true);
    translate([0, 2.6*scale,.5*scale]) rotate(90,[0,1,0]) cylinder(r=zip_tie_radius_inner, h=7*scale,center=true);
}

module cutOut(){
    translate([0,1*scale,0]) cube(size = [x-1*scale, y-.5*scale, z], center = true);
}


difference(){
    base();
    cutOut();
    poleCutOut();
    zipTieCutOut();
}

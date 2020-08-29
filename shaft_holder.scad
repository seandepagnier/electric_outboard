$fn=60;

bearing_od=26;
bearing_id=12;
bearing_h = 10;

width=50;
length=150;
rta=.8;
dim=1.1;
ht=1.4;
angle=88;

module shape()
{
   // cylinder(r=bearing_od/2, h = dim*shaft_d + bearing_h*2, center=true);
}

rotate([-angle,0,0])
difference() { 
    hull() {
       cube([width*1.2, length*1.2, length], center=true);
        translate([width*rta, 0, 0])
          rotate([angle, 0, 0])
            cylinder(r=bearing_od*1.2/2, h=length*ht, center=true);
    }
    translate([0, 0, -dim*width/2-bearing_h/2])
        cube([width, length, length*2], center=true);
    translate([width*rta, 0, 0])
        rotate([angle, 0, 0]) {
           cylinder(r=bearing_id*1.5/2, h=length*ht+1, center=true);
           translate([0, 0, ht*length/2-bearing_h/2])
               cylinder(r=bearing_od/2, h=bearing_h+1, center=true);
           translate([0, 0,-ht*length/2+bearing_h/2])
               cylinder(r=bearing_od/2, h=bearing_h+1, center=true);
        }
}
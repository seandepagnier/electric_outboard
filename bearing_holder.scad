$fn=60;

offset=1.2;

module bearing_holder(diameter, height, screw) {
    difference() {
        cylinder(r1=diameter*1.1, r2=diameter*1, h=height);
        translate([offset,0,-.5])
        cylinder(r=diameter/2, h=height+1);
        for(i=[0:5]) {
            rotate(i*60)
                translate([diameter*.7, 0, -.5])
                    cylinder(r=screw, h=height+1);
        }
        
    }
}


bearing_holder(26.8, 8, 2.5);
//translate([76, 0, 0])
 //   bearing_holder(42.2, 14, 3);
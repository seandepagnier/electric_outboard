$fn=60;

bearing_od=42;
bearing_id=27;
bearing_h1 = 14;
bearing_h2 = 19;
space = 2;
shaft_d = 25.4*2;

difference() { 
    hull() {
        translate([0, 0, -shaft_d/2 - space - bearing_h1])
      cylinder(r=bearing_od*1.4/2, h = shaft_d + space*2 + bearing_h1 + bearing_h2);
        translate([0, shaft_d/2,0 ])
        rotate([90, 0, 0])
          cylinder(r=shaft_d*1.2/2, h=shaft_d*2);
    }
    cylinder(r=bearing_id/2, h=shaft_d*2+1, center=true);
    translate([0, 0, -shaft_d/2-space-bearing_h1-.1])
        cylinder(r=bearing_od/2, h=bearing_h1+1);
    translate([0, 0, shaft_d/2+space+.1])
     cylinder(r=bearing_od/2, h=bearing_h2+1);
        rotate([90, 0, 0])
    translate([0, 0, -shaft_d])
           cylinder(r=shaft_d/2, shaft_d*4+1);
}
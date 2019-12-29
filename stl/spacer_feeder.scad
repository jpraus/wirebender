width = 19;         // Overall width
spacerD = 17.5;     // Diameter of spacer
spacerW = 9;        // Width of spacer
feeder = 10;        // Internal Diameter of feeder
keyW = 3;           // Width of inside key
keyH = 1.5;         // Height of inside key
spindle = 5;        // Diameter of spindle

$fn=100;            // set number of faces

difference () {
    union() {
        cylinder(r=spacerD/2, h=spacerW);
        cylinder(r=feeder/2, h=width);
    }
    translate([0,0,-1]) cylinder(r=spindle/2, h=width+2);
}
translate([(feeder/2)-keyH,-(keyW/2),0]) cube([keyH*2,keyW,width]);
translate([2,-(spindle/2),0]) cube([2,spindle,width]);
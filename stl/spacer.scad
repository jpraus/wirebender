width = 7;       // Overall width
spacerD = 8.5;   // Diameter of spacer
spacerW = 2;     // Width of spacer
bearing = 6;     // Internal Diameter of bearing
bolt = 3;        // Diameter of bolt

$fn=100;         // set number of faces

difference () {
    union() {
        cylinder(r=spacerD/2, h=spacerW);
        cylinder(r=bearing/2, h=width);
    }
    translate([0,0,-1]) cylinder(r=bolt/2, h=width+2);
}
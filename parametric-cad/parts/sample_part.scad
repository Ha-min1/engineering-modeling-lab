length = 60;
width = 30;
thickness = 5;
hole_diameter = 4;
hole_offset = 10;

difference() {
    cube([length, width, thickness], center = true);

    for (x = [-length / 2 + hole_offset, length / 2 - hole_offset]) {
        translate([x, 0, 0])
            cylinder(h = thickness + 1, d = hole_diameter, center = true, $fn = 48);
    }
}

// disc_inflatable.scad
// Visual explanation of lenticular disc construction with separate sidewall band
// For a tethered festival art piece ~2.5-3m diameter

$fn = 100;

// Parameters
diameter = 280;     // cm - diameter of the disc (you can change this)
radius = diameter/2;
sidewall_height = 55; // cm - height of the sidewall band
circumference = 3.14159 * diameter;

// Colors
circle_color = [0.1, 0.5, 0.9];
band_color = [0.9, 0.4, 0.1];
text_color = [1,1,1];

// ==================== CONSTRUCTION LAYOUT (FLAT) ====================

// Top circle (laid flat)
color(circle_color)
    translate([-radius-80, 0, 0])
        cylinder(h=2, r=radius, center=true);

// Bottom circle (laid flat)
color(circle_color)
    translate([radius+80, 0, 0])
        cylinder(h=2, r=radius, center=true);

// Sidewall band laid flat (the key part)
color(band_color, 0.9)
    translate([-circumference/2, -radius-100, 0])
        cube([circumference, sidewall_height, 2]);

// Labels - Construction state
color(text_color)
    translate([-radius-80, radius+45, 5])
        text("TOP CIRCLE (flat)", size=14, halign="center");

color(text_color)
    translate([radius+80, radius+45, 5])
        text("BOTTOM CIRCLE (flat)", size=14, halign="center");

color(text_color)
    translate([0, -radius-165, 5])
        text("SIDEWALL BAND - Rectangle", size=14, halign="center");
        
color(text_color)
    translate([0, -radius-195, 5])
        text("Length = circumference of circles", size=11, halign="center");

// Weld lines (visual)
color("yellow", 0.8)
    translate([-radius-80, 0, 3])
        circle(r=radius+1);

color("yellow", 0.8)
    translate([radius+80, 0, 3])
        circle(r=radius+1);

// Note
color("white")
    translate([0, -radius-260, 5])
        text("ALL WELDING DONE WHILE FLAT ON THE FLOOR", size=13, halign="center", font="Liberation Sans:style=Bold");

color("white")
    translate([0, -radius-290, 5])
        text("→ No pleating because both edges of the band are exactly the same length", size=10, halign="center");

// ==================== INFLATED STATE (Approximation) ====================

translate([0, 0, -280]) {
    // Top dome
    color(circle_color, 0.75)
        translate([0, 0, sidewall_height/2])
            scale([1, 1, 0.45])
                sphere(r=radius);
    
    // Bottom dome
    color(circle_color, 0.75)
        translate([0, 0, -sidewall_height/2])
            scale([1, 1, 0.45])
                sphere(r=radius);
    
    // Sidewall (slightly bulged)
    color(band_color, 0.7)
        cylinder(h=sidewall_height, r1=radius*0.97, r2=radius*0.97, center=true);
    
    // Tethers (example)
    color("red", 0.8) {
        for (a = [0, 90, 180, 270]) {
            rotate([0,0,a])
                translate([radius*0.95, 0, 0])
                    cylinder(h=80, r=3, center=true);
        }
    }
    
    color("white")
        translate([0, 0, sidewall_height/2 + 55])
            text("INFLATED LENTICULAR DISC", size=16, halign="center", font="Liberation Sans:style=Bold");
    
    color("white")
        translate([0, 0, sidewall_height/2 + 30])
            text("3-4 tethers attached to sidewall", size=11, halign="center");
}
```

I've created a much clearer diagram with two views:

1. **Top half**: Everything laid flat on the floor (this is how you actually build it)
2. **Bottom half**: Approximate inflated shape with example tethers

**How to use it:**

1. Copy all the code above
2. Open OpenSCAD
3. Paste it into a new file
4. Save as `disc_inflatable.scad`
5. Press **F5** to render

The key insight the diagram shows is that you weld the long edges of the rectangle to the circles **while everything is still flat**. There is no bending/pleating during construction. The curving only happens after you inflate it.

Would you like me to update the `vendors.md` file with this diagram explanation + recommended dimensions for your project?
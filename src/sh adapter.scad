include <BOSL2/std.scad>

/*
 Jayo spools to Flashforge AD5X spool holders 
 Adapt it for other dimensions below, or use Openscad Customizer

 Orca slicer: 
 Line height 0.3 mm 
 Walls: 2, bottom: 2 top: 2
 Infill:  8% tri-hexagon/gyroid
*/

// Spool holder diameter (AD5X)
inner_dia=56;
// Spool inner diameter
outer_dia=72.;  
// Height / thickness of flange
flangeheight=3;
// Width of flange
flangewidth=5;

/* [Hidden] */
$fn=64;
insert_height=12;
flange_outer_dia=outer_dia+flangewidth;

// This model is quite simple, thanks to the use of BOSL2


tube (id=inner_dia, od=flange_outer_dia , h=flangeheight, anchor=BOTTOM, orounding1=2, orounding2=0.5);
zmove(flangeheight)
tube (id=inner_dia, od=outer_dia , h=insert_height, anchor=BOTTOM, orounding2=1, irounding2=1);

move([0, outer_dia/2-4, flangeheight+insert_height])text3d(str(outer_dia), h=0.5, size=5, anchor=BOTTOM, center=true);

/* 

This work is licensed under a
Creative Commons (4.0 International License)
Attribution

See https://creativecommons.org/licenses/by/4.0/
Attribute to Patlun

https://www.printables.com/@Patlun_258896

*/
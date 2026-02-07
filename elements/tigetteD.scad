include <variables.scad>




translate([0,0,-longb-ep-0.5])
cylinder(htig+longb, d=dtige);
translate([0,0,hpd-hrtub+epe])
cylinder(hrtub, d=dtub);
translate([0,0,hpd+epe])
cylinder(etouch, d=diat); //touche

translate([0,0,-ep/2-longb-ep-0.5])
cylinder(ep, d= drtub+4); //clapet
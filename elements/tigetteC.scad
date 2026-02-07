include <variables.scad>




translate([0,0,-longb-ep-0.5])
cylinder(htig+escalier, d=dtige);
translate([0,0,hpd-hrtub+epe])
cylinder(hrtub+escalier, d=dtub);
translate([0,0,hpd+epe+escalier])
cylinder(etouch, d=diat); //touvhe
    
translate([0,0,-ep/2-longb-ep-0.5])    
cylinder(ep, d= drtub+4); //clapet
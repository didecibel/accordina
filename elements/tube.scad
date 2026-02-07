include <variables.scad>


difference(){    
    
union(){
translate([0,0,-hrtub-ep-0.2])
cylinder(hpd+ep*2,d=dtub); //tube centre
translate([0,0,hpd-hrtub])
cylinder(hrtub+ep,d=drtub); //tube haut
}

union(){
translate([0,0,-hrtub-ep-0.5])
cylinder(hpd+ep*2,d=dtige);  //centre
translate([0,0,hpd-hrtub])
cylinder(hrtub+ep+0.2,d=dtub);  //haut
}}
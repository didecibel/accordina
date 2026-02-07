include <variables.scad>



//plaques laterales






//plaque face


translate([0,0,-htc])
color("Gainsboro",0.5)
cube([ep,lag,hpd+htc]);


//plaque fond
translate([lg-ep,0,-htc])
color("Gainsboro",0.5)
cube([ep,lag,hpd+htc]);


//plaque droit


difference(){

translate([0,0,-htc])

color("Gainsboro",0.5)
cube([lg,ep,hpd+htc]);
for(i=[1:1:22]){
translate([i*etv/1.5+etv/2,-0.1,-htc/4+i*1.2/2])
color("red",0.5)
cube([4,ep+0.2,hhtt-i*1.2]);

}
}

//plaque gauche


difference(){

translate([0,lag-ep,-htc])
color("Gainsboro",0.5)
cube([lg,ep,hpd+htc]);
for(i=[2:1:22]){
translate([i*etv/1.5+drtub/2,lag-ep-0.1,-htc/4+i*1.2/2])
color("red",0.5)
cube([4,ep+0.2,hhtt-i*1.2]);

}
}






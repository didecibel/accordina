
//reservoir d'air

color("lightgrey"){
difference(){

translate([0,0,-longb-htr-ep])
cube([lg,lag,htr]);
translate([ep,ep,-longb-htr+ep*2+0.1])
cube([lg-ep*2,lag-ep*2,htr-ep*2]);

}

}
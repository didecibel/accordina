

//plaque droite



color("Gainsboro",0.8){
translate([lg-ep,longb,0])
rotate([0,-90,0])
linear_extrude(lg-ep*2, center = false, convexity=10,twist=0)
plateral();

// plaque gauche

mirror([0,1,0])
translate([lg-ep,-lab-2*coop-2*ep-2.7*cos(90+angle)*ep,0])
rotate([0,-90,0])
linear_extrude(lg-ep*2, center = false, convexity=10,twist=0)
plateral();

}

module plateral(){
    
    polygon([[ep,-cos(90-angle)*ep],[hpd,-longh-cos(90-angle)*ep/2],[hpd-ep+ep,ep-longh-cos(90-angle)*ep],[ep,ep-cos(90-angle)*ep]]);
    
}

include <variables.scad>

//plaque dessous

color("Gainsboro",0.8){

difference(){




translate([lg-ep,longb,0])
rotate([0,-90,0])
linear_extrude(lg-ep*2, center=false, convexity=10, twist=0){
polygon([[0,0],[0,lab],[ep,lab+cos(90-angle)*ep],[ep,cos(90+angle)*ep]]);
}
//cote droit    
for(i=[1:1:nb-1]){
    translate([decal+i*etv+etv/2,lag/2-eth,-0.1]){
cylinder(ep+0.2, d=dtb);
}}

//centre
for(i=[1:1:nb]){
    translate([decal+i*etv,lag/2,-0.1]){
cylinder(ep+0.2, d=dtb);
}}

//coté gauche
for(i=[1:1:nb-1]){
    translate([decal+i*etv+etv/2,lag/2+eth,-0.1]){
cylinder(ep+0.2, d=dtb);
}}

}

}

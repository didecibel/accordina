include <variables.scad>

//plaque dessous dessous
color("Gainsboro",0.8){
difference(){

translate([0,0,-longb-ep])
cube([lg,lag,ep]);
//droite    
for(i=[1:1:nb-1]){
    translate([decal+i*etv+etv/2,lag/2-eth,-longb-ep-0.1])
    cylinder(ep+0.5, d=drtub);
}   

//centre
for(i=[1:1:nb]){
    translate([decal+i*etv,lag/2,-longb-ep-0.1])
    cylinder(ep+0.5, d=drtub);
}    

//gauche
for(i=[1:1:nb-1]){
    translate([decal+i*etv+etv/2,lag/2+eth,-longb-ep-0.1])
    cylinder(ep+0.5, d=drtub);
}
}
}

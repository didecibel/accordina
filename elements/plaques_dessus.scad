include <variables.scad>

//plaque dessous
color("Gainsboro",0.8){

translate([0,0,hpd]){
difference(){
cube([lg,lag,ep]);

//cote droit    
for(i=[1:1:nb-1]){
    translate([decal+i*etv+etv/2,lag/2-eth,-0.1]){
cylinder(ep+0.2, d=dth);
}}

//centre
for(i=[1:1:nb]){
    translate([decal+i*etv,lag/2,-0.1]){
cylinder(ep+0.2, d=dth);
}}

//coté gauche
for(i=[1:1:nb-1]){
    translate([decal+i*etv+etv/2,lag/2+eth,-0.1]){
cylinder(ep+0.2, d=dth);
}}

}}

}

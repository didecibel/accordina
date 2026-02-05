//plaque dessous

difference(){
translate([0,longb,0])
cube([lg,lab,ep]);

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

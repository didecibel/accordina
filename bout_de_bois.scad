//bout de bois

color("PaleGoldenRod",1){


difference(){
translate([lg-ep,longb,0])
rotate([0,-90,0])
linear_extrude(lg-ep*2, center=false, convexity=10, twist=0){

polygon([[ep,2*cos(90+angle)+ep],[ep,lab-2*cos(90+angle)-ep],[hpd-hrtub,lab+cos(90-angle)*(hpd-hrtub)-2*cos(90+angle)-ep],[hpd-hrtub,cos(90+angle)*(hpd-hrtub)+2*cos(90+angle)+ep]]);


}

//cote droit    
for(i=[1:1:nb-1]){
    translate([decal+i*etv+etv/2,lag/2-eth,ep]){
cylinder(hpd-hrtub+1, d=dtub);
}}

//centre
for(i=[1:1:nb]){
    translate([decal+i*etv,lag/2,ep]){
cylinder(hpd-hrtub+1, d=dtub);
}}

//coté gauche
for(i=[1:1:nb-1]){
    translate([decal+i*etv+etv/2,lag/2+eth,ep]){
cylinder(hpd-hrtub+1, d=dtub);
}}

}

}

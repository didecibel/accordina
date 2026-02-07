//plaque intermédiaire
color("Gainsboro",0.8){
difference(){

translate([lg-ep,longb,hpd-hrtub])
rotate([0,-90,0])
linear_extrude(lg-ep*2, center=false, convexity=10, twist=0){
polygon([[0,-coop+ep+cos(90+angle)*ep],[0,lab+coop-ep-cos(90+angle)*ep],[ep,lab+coop+cos(90-angle)*coop-ep],[ep,-coop+cos(90+angle)*coop+ep]]);
}

//cote droit    
for(i=[1:1:nb-1]){
    translate([decal+i*etv+etv/2,lag/2-eth,hpd-hrtub-0.5]){
cylinder(ep+1, d=dth);
}}

//centre
for(i=[1:1:nb]){
    translate([decal+i*etv,lag/2,hpd-hrtub-0.5]){
cylinder(ep+1, d=dth);
}}

//coté gauche
for(i=[1:1:nb-1]){
    translate([decal+i*etv+etv/2,lag/2+eth,hpd-hrtub-0.5]){
cylinder(ep+1, d=dth);
}}

}

}

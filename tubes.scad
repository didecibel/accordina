
//coté droit
translate([decal,0,0]){
color("red", 0.8){

for(i=[1:1:nb-1]){

translate([i*etv+etv/2,lag/2-eth,0]){
difference(){    
    
union(){
translate([0,0,-hrtub-ep-0.1])
cylinder(hpd+ep*2,d=dtub); //tube centre
translate([0,0,hpd-hrtub])
cylinder(hrtub+ep,d=drtub); //tube haut
}

union(){
translate([0,0,-hrtub-ep-0.5])
cylinder(hpd+1,d=dtige);  //centre
translate([0,0,hpd-hrtub])
cylinder(hrtub+ep+0.2,d=dtub);  //haut
}}}
}


//centre
for(i=[1:1:nb]){

translate([i*etv,lag/2,0]){
difference(){    
    
union(){
translate([0,0,-hrtub-ep-0.1])
cylinder(hpd+ep*2,d=dtub);//centre
translate([0,0,hpd-hrtub])
cylinder(hrtub+ep,d=drtub);//haut
}

union(){
translate([0,0,-hrtub-ep-0.5])
cylinder(hpd+1,d=dtige); //centre 
translate([0,0,hpd-hrtub])
cylinder(hrtub+ep+0.2,d=dtub); //haut  
}  
}}
}
//coté gauche
for(i=[1:1:nb-1]){

translate([i*etv+etv/2,lag/2+eth,0]){
difference(){    
    
union(){
translate([0,0,-hrtub-ep-0.1])
cylinder(hpd+ep*2,d=dtub);//centre
translate([0,0,hpd-hrtub])
cylinder(hrtub+ep,d=drtub);//haut
}

union(){
translate([0,0,-hrtub-ep-0.5])
cylinder(hpd+1,d=dtige);  //centre
translate([0,0,hpd-hrtub])
cylinder(hrtub+ep+0.2,d=dtub);  //haut
}   
}}
}
}

}

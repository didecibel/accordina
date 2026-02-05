$fn = 20;
//chambres




//globol

decal = 5; //decalage global chambres
lg = 310; //longueur totale
lag = 60; //largeur totale
ep = 1.5; //epaisseur plak
etv = 19; // ecart vert touches
eth = 14; //ecrat hor touches
nb = 15; //nombre de touches

//plaque dessus

hpd = 40; //hauteur plaque dessus
dth = 8; //diametre des trous pl haut
dtb = 6; //diametre des trous pl bas

include <plaque_dessus.scad>

//tubes 

dtige=4; //diametre tige bouton
dtub = 6; //dimatre tube 
drtub = 8; //diametre tube ressort
hrtub = 10; //hauteur ressort tube
hbtub = 14; //hauteur du bas du tube

include <tubes.scad>

//chambre

htc=10;//hauteur chambres
epa = 2; //epaisseur ailettes
epc=3; //grosse epaisseur chmbre
long0=etv-drtub;
long00=etv-drtub-ep*2;
long000=etv+etv/2;
long1=lag/2-drtub/2-epc-epc/2;
long2=lag/2+epc/2+drtub/2;
longb = 10; //largueur basse ailette
longh = 5; //largeur haute ailette
lab = lag-longb*2;

include <chambres.scad> 

//plaque dessus ici a cause des variables des chambres

include <plaque_dessous.scad>

//tigettes

epe = 6; //epaisseur escalier
escalier = 3; //ecart de hauteur des touches
htig = hpd+epe;
etouch = 3; //epaisseur touche    
diat = 15; // diametre de la touche
//coté droit

include <tigettes.scad>


echo();
echo();
echo();
echo();
echo("***********************");
echo("long000 aka inter cloisons = ", long000);
echo("long0 fond des cloisons = ", long0);
echo("long1 base ailette centrale = ", long1);
echo("long2 base ailette grande = ", long2);




echo("*********************** ");
echo();
echo();


include <plaque_dessous_dessous.scad>


//reservoir d'air


htr = 8;

//include <reservoir_air.scad>


//plaques ltérales

include <plaques_laterales.scad>

//plaques internes


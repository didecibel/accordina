$fn = 50;
//chambres

//globol

decal = 5; //decalage global chambres
lg = 310; //longueur totale
lag = 60; //largeur totae
ep = 1.5; //epaisseur plak
etv = 19; // ecart vert touches
eth = 14; //ecrat hor touches
nb = 15; //nombre de touches

//plaque dessus

hpd = 40; //hauteur plaque dessus
dth = 8; //diametre des trous pl haut
dtb = 6; //diametre des trous pl bas

//include <plaque_dessus.scad>

//tubes 

dtige=4; //diametre tige bouton
dtub = 6; //dimatre tube 
drtub = 8; //diametre tube ressort
hrtub = 10; //hauteur ressort tube
hbtub = 14; //hauteur du bas du tube

//include <tubes.scad>

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


//plaque dessus ici a cause des variables des chambres


//tigettes

epe = 6; //epaisseur escalier
escalier = 3; //ecart de hauteur des touches
htig = hpd+epe;
etouch = 3; //epaisseur touche    
diat = 15; // diametre de la touche
//coté droit



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


hypo = sqrt((longb-longh)^2 + hpd^2);
echo("hypo" ,hypo);
cosin = hpd/hypo;
echo("cos alpha",cosin);
angle = acos(cosin);
echo("angle",angle);



//reservoir d'air


htr = 8;



//plaques ltérales

hhtt=37; //hauteur première plaque

//include <plaques_laterales.scad>

//plaques internes

//plaque intermediaire ou bout de bois


hauteur = hpd-hrtub;
echo("hauteur" , hauteur);
hypopo = 1 / (cos(angle) / hauteur);
hypopopo = 1 / (cos(angle) / hpd);
echo("hypopo", hypopo);
coop = sin(angle) * hypopo;
echo("coop", coop);

//plaques laterale interne








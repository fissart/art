if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-28";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.prc=false;
defaultpen(fontsize(11 pt));
defaultpen(linewidth(0.7pt));
settings.render=2;

import three;
size(8cm,0);
currentprojection=obliqueX;
currentlight=(0,2,1);

//~~~~~~~~~ DEFINITIONS ~~~~~~~~~
// On définit le plan.
triple v1=(10,0,0),
v2=(0,10,0),
pO=(-2,-3,0);
path3 pl1=plane(v1,v2,pO);
// On définit un chemin
path3 ch=(5,3,4)..(5,4,8)..(1,4,4)..(4,-2,3)..cycle;

// On définit la projection orthogonale sur pl1 :
transform3 proj=planeproject(pl1);
// et on définit le projetté de ch :
path3 chproj=proj*ch;

//~~~~~~~~~ CONSTRUCTIONS ~~~~~~~~~
// On trace le plan.
draw(surface(pl1),paleblue+opacity(.5),blue);
// On trace le chemin défini
draw(ch,blue);
// et son projeté
draw(chproj,red);

for (int i=0; i < length(ch); ++i)
draw(point(ch,i)--point(chproj,i), .5bp+blue+dotted);

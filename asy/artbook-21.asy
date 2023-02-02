if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-21";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.prc=false;
defaultpen(fontsize(11 pt));
defaultpen(linewidth(0.7pt));
//settings.render=1;

import solids;
currentprojection=orthographic(8.5,9.5,8);
currentlight=(0,5,5);

size(8cm,0);

real R=3, a=1, d=R+2a;

// On définit un tore et on le trace.
revolution tore=revolution(shift(R*X)*Circle(O,a,Y,32),Z);
surface s=surface(tore);
draw(s,white);

// On définit une courbe et on la trace...
path3 g=d*unit(X+.3Y)..0.5(X-Y)..d*unit(-X-3Y)
..(-d,0,a)..0.5(Y-X)..d*unit(.5X+Y);
draw(g,2bp+blue);
// ... en indiquant en vert les 6 points la définissant.
dot(g,4bp+green);

// On définit les points d'intersection du tore et de la courbe...
triple[] points=intersectionpoints(g,s);
// ... que l'on place en rouge.
dot(points,6bp+red);


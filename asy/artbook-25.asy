if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-25";
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

import three;
import math;
import solids;
size(300,0);
pen thickp=linewidth(0.5mm);
real radius=1, lambda=37, aux=60;
currentprojection=perspective(1,1,0.5);
revolution sphere=sphere(1);
draw(surface(sphere),green+opacity(0.2));
draw(sphere,m=5,blue+linewidth(0.1mm));
real r=1.1;
pen p=rgb(0,0.7,0);
draw(Label("$x$",1),O--r*X,p,Arrow3);
draw(Label("$y$",1),O--r*Y,p,Arrow3);
draw(Label("$z$",1),O--r*Z,p,Arrow3);
label("$O$",(0,0,0),W);
//draw(unitsphere, orange+opacity(0.5));
// Point Q
triple pQ=radius*dir(lambda,aux);
draw(O--radius*dir(90,aux),dashed);
label("$ Q$",pQ,N+3*W);
draw("$\lambda$",arc(O,0.15pQ,0.15*Z),N+0.3E);

// Particle
triple m=pQ-(0.26,-0.4,0.28);
real width=5;
dot("$m$",m,SE,linewidth(width));
draw("${\rho}$",(0,0,0)--m,Arrow3,PenMargin3(0,width));
draw("${r}$",pQ--m,Arrow3,PenMargin3(0,width));

// Spherical octant
real r=sqrt(pQ.x^2+pQ.y^2);
draw(arc((0,0,pQ.z),(r,0,pQ.z),(0,r,pQ.z)),dashed);
draw(arc(O,radius*Z,radius*dir(90,aux)),dashed);
draw(arc(O,radius*Z,radius*X),thickp);
draw(arc(O,radius*Z,radius*Y),thickp);
draw(arc(O,radius*X,radius*Y),thickp);

// Moving axes
triple i=dir(90+lambda,aux);
triple k=unit(pQ);
triple j=cross(k,i);

draw(Label("$x$",1),pQ--pQ+0.2*i,2W,red,Arrow3);
draw(Label("$y$",1),pQ--pQ+0.32*j,red,Arrow3);
draw(Label("$z$",1),pQ--pQ+0.26*k,red,Arrow3);

draw("${R}$",O--pQ,Arrow3,PenMargin3);
draw("$\omega{K}$",arc(0.9Z,0.2,90,-120,90,160,CW),1.2N,Arrow3);

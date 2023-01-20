if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-20";
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
import math;


size(300,0);

pen thickp=linewidth(0.5mm);
real rho=1, phi=60, z=0.8;

currentprojection=perspective((4,1,2));

draw(unitcylinder,material(palegray+opacity(0.25),shininess=0.5));

real r=1.1;
pen p=black;
draw(Label("$x$",1),O--r*X,p,Arrow3);
draw(Label("$y$",1),O--r*Y,p,Arrow3);
draw(Label("$z$",1),O--r*Z,p,Arrow3);
label("$ O$",(0,0,0),-1.5Y-X);

triple Q=(rho*Cos(phi),rho*Sin(phi),z);
dot("$(x,y,z)$",Q);
draw(Q--(Q.x,Q.y,0),dashed+blue);
draw(O--rho*dir(90,phi),dashed+blue);
draw((0,0,Q.z)--Q,dashed+blue);
draw("$\varphi$",arc(O,0.15*X,0.15*dir(90,phi)),align=6*dir(90,phi/3)+Z,Arrow3);
draw("$\rho$",(0,0,0)--(Q.x,Q.y,0),align=-Y+2X,DotMargin3);
draw("${r}$",O--Q,align=2*dir(90,phi),Arrow3,DotMargin3);

if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-29";
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

import graph3;

size(300,0);

currentprojection=perspective(1,1,1);

real x(real t) {return 1+cos(2pi*t);}
real y(real t) {return 1+sin(2pi*t);}
real z(real t) {return t;}

path3 p=graph(x,y,z,0,1,operator ..);

draw(p,Arrow3);
draw(planeproject(XY*unitsquare3)*p,red,Arrow3);
draw(planeproject(YZ*unitsquare3)*p,green,Arrow3);
draw(planeproject(ZX*unitsquare3)*p,blue,Arrow3);

axes3("$x$","$y$","$z$");

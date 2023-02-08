if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-19";
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
import graph3;
size(300,0);
path3 g =(0,1.1,0) -- (0,1.1,0.1) .. tension 1.1 .. (0,2,0.8) .. (0,1,3) ..tension 1 and 5 .. (0,0.8,4.5) ..tension 50 and 50 .. (0,0.5,5) -- (0,0.5,7)-- (0,0.8,9)-- (0,0.8,10);
surface lampshade=surface(g, c=O, n=100, axis=Z);
draw(lampshade, white+opacity(0.5));
dot(g, black);
draw(rotate(98,Y)*shift((-1.5,3,0))*scale3(.5)*lampshade, orange+opacity(0.5));
axes3("$x$","$y$","$z$", Arrow3);
draw(surface((-2,-2,0)--(2,-2,0)--(2,2,0)--(-2,2,0)--cycle), white+opacity(0.5));

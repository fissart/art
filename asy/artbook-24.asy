if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-24";
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
import three;
size3(200,0);
currentprojection=perspective(4,6,-3);
//triple pA=(-3,0,0), pB=(0,3,0), pC=(0,0,3), pE=(0,0,3);
//path3 gg=pA--pB--pC--cycle;
//draw(surface(gg),orange);
triple p1=(3,1,1.5);
transform3 t=shift(p1);
transform3 g=scale(1.5,1.5,1.5);

draw(g*unithemisphere,blue);
draw(surface(t*g*unithemisphere),orange);
draw(surface(t*g*g*unithemisphere),yellow);
draw(surface(t*g*g*g*unithemisphere),yellow);
axes3("$x$","$y$","$z$", Arrows3);

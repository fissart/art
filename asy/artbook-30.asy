if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-30";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.prc=false;
defaultpen(fontsize(11 pt));
defaultpen(linewidth(0.7pt));
settings.render=1;

import graph3;
import three;
settings.render=-1;
currentprojection=perspective(3,7,2);
currentlight=light((0,0,3),(0,0,-3));
size(300,0);
transform3 ag=scale(1.7,2,0.7);
triple pA=(-3,0,0), pB=(0,3,0), pC=(0,0,3), pE=(0,0,3);
transform3 sym=reflect(pA,pB,pC);
draw(ag*unithemisphere,yellow+opacity(0.7), meshpen=brown+thick());
draw(sym*ag*unithemisphere,red+opacity(0.7), meshpen=brown+thick());
triple pS=(0,0,0.7), pE=(0,2,0);
draw(pS--sym*pS,paleblue);
draw(pE--sym*pE,paleblue);
dot((pS+sym*pS)/2);
dot((pE+sym*pE)/2);
draw((pS+sym*pS)/2--(pE+sym*pE)/2, dashed);
dot(pS^^pE^^sym*pS^^sym*pE);
label("$P$", pS, 2NW);
label("$Q$", pE, SW);
label("$P'$", sym*pS, NW);
label("$Q'$", sym*pE, SE);
triple ww=unit(cross(sym*pS-pS,sym*pS-sym*pE));
draw(surface(plane(O=(pE+sym*pE)/2-unit((pS+sym*pS)/2-(pE+sym*pE)/2)-ww, 2*ww, 2*((pS+sym*pS)/2-(pE+sym*pE)/2))), blue + opacity(0.6));

draw("$90^\circ$",arc((pS+sym*pS)/2,(pS+sym*pS)/2-0.3*unit((pS-sym*pS)/2),(pE+sym*pE)/2),align=3*Y, Arrows3,light=currentlight);
axes3("$x$","$y$","$z$", Arrows3);


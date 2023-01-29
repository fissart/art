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
settings.render=1;

import three;
import graph3;

size(300,0);
//create segment
path3 g = (0,1.2,0) ..
(0,0.6,1.2)..
(0,3,1.5)..
(0,0.8,2.1);
surface lampshade =
surface(g, c=O, n=100, axis=Z);
draw(lampshade, white);
//draw revolved segment for reference
draw(g, black);
dot(g, black);
//draw axes for reference
axes3("$x$","$y$","$z$", Arrow3);

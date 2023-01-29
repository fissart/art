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
settings.render=1;

import graph3;
import three;

//size(300,0);
size3(300,IgnoreAspect);

currentprojection=perspective(2,1,1);
triple P=(1,1,1);
scale(Linear,Linear,Linear);
dot("$P=(x,y,z)$",(1,1,1),dir(-35));
dot("$W=(x,y,0)$",(1,1,0),dir(-45));
dot("$Q=(x,y,0)$",(1,0,0),dir(165));
dot("$R=(x,y,0)$",(0,1,0),dir(35));
draw(box(O,P),dashed);
xaxis3("$x$",0,1.5,red,OutTicks(2,2));
yaxis3("$y$",0,1.5,red,OutTicks(2,5));
zaxis3("$z$",0,1.5,red,OutTicks(2,2));


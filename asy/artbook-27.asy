if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-27";
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

import graph3;
import three;

size3(12cm,IgnoreAspect);

currentprojection=perspective(2,1,1);
triple P=(1,1,1);
triple P1=(-1,1.5,0.5);
scale(Linear,Linear,Linear);
dot("$P=(x,y,z)$",P,dir(45));
dot("$W=(x,y,0)$",(1,1,0),dir(-45));
dot("$P_1=(x,y,0)$",P1,dir(45));
dot("$Q=(x,y,0)$",(1,0,0),dir(165));
dot("$R=(x,y,0)$",(0,1,0),dir(35));
draw(box(O,P),dashed);
xaxis3("$x$",0,1.5,red,OutTicks(2,2));
yaxis3("$y$",0,1.5,red,OutTicks(2,5));
zaxis3("$z$",0,1.5,red,OutTicks(2,2));

draw(Label("$\mathcal{L}_1$",Relative(.9),align=dir(90)), P+2*unit(P-P1)--P1+2*unit(P1-P));
draw(Label("$\vec{v}_1$",Relative(.5),align=dir(90)),shift(0.05*P) * (P-0.3*unit(P-P1)--P1+0.3*unit(P-P1)), orange, arrow=Arrow3());
draw(O--2X ^^ O--2Y ^^ O--2Z);
triple circleCenter = (Y+Z)/sqrt(2) + X;
path3 mycircle =circle(c=circleCenter, r=1,normal=Y+Z);
draw(plane(O=sqrt(2)*Z, 2X, 2*unit(Y-Z)), gray + 0.1cyan);
draw(mycircle, blue);
draw(shift(circleCenter)*(O -- Y+Z), green, arrow=Arrow3());


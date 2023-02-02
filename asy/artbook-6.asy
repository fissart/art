if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-6";
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
size(300,0);
currentprojection=perspective((45,30,50));
viewportmargin=(1mm,1mm);

draw((4,0,8)--(-4,0,8)^^(0,4,8)--(0,-4,8),dashed+darkgray);
draw("$x$",O--X,Arrow3);draw(O--3X);
draw("$y$",O--Y,Arrow3);draw(O--3Y);
draw("$z$",O--Z,Arrow3);draw(O--13Z);

path3 gene=(0,2,3)..(0,3,3.5)..(0,4,4.5)..(0,4.5,6)
..(0,4,8)..(0,1,10)..(0,2,12);
revolution vase=revolution(c=(0,0,0),gene, axis=Z, -70, 270);
draw(surface(vase),palegreen+opacity(.4));
draw(vase,m=3,frontpen=.8bp+blue,backpen=.6bp+paleblue,longitudinalpen=nullpen);
skeleton s;
vase.transverse(s,reltime(vase.g,0.5),P=currentprojection);
draw(s.transverse.back,1bp+yellow+linetype("8 8",8));
draw(s.transverse.front,1bp+yellow);

draw((0,2,3)--(0,-2,3)^^(2,0,3)--(-2,0,3),dashed+gray);
draw((0,2,12)--(0,-2,12)^^(2,0,12)--(-2,0,12),gray);

draw (gene,1bp+green);
draw ((2,0,12)..(0,2,12)..(-2,0,12)..(0,-2,12)..cycle,.4bp+red,Arrow3);

dot(Label("$a$",align=SE),(0,0,3));
dot(Label("$z$",align=SE),(0,0,8),red);
dot(Label("$b$",align=NE),(0,0,12));
draw("$r(z)$",(0,0,8)--(4,0,8),red,Arrow3);


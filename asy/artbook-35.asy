if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-35";
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
size(8cm,0);
currentprojection=perspective(1,1,1);
currentlight=(0,2,1);
triple v1=(10,0,0),
v2=(0,10,0),
pO=(-2,-3,0);
path3 pl1=plane(v1,v2,pO);
path3 ch=(5,3,4)..(5,4,8)..(1,4,4)..(4,-2,3)..cycle;

transform3 proj=planeproject(pl1);
path3 chproj=proj*ch;

draw(surface(pl1),paleblue+opacity(.5),blue);
draw(ch,blue);
draw(chproj,red);

for (int i=0; i < length(ch); ++i)
draw(point(ch,i)--point(chproj,i), .5bp+blue+dotted);

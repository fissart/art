if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-28";
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

import solids;
import obj;
settings.render=-1;
size3(200,0);
size(300);
currentprojection=perspective(3,3,-1);
currentlight=Headlamp;
triple t=(0,3 ,0);
triple vectaxe=(1,0,0);

triple pA=(-3,0,0), pB=(0,3,0), pC=(0,0,3), pE=(0,0,3);
transform3 sym=reflect(X,Z,O);
transform3 r=rotate(0,vectaxe);
triple p1=(1.3125,-0.531249,0.054691);
triple p2=(0.328125,0.398431,-0.914065);
draw(p1--shift(t)*p1,blue+dashed, Arrow3);
draw(p2--shift(t)*p2,blue+dashed, Arrow3);
dot(p1^^p2^^shift(t)*p1^^shift(t)*p2);

dot(Label("$A$",align=dir(-90)),p1);
dot(Label("$C$",align=dir(-90)),p2);
dot(Label("$B$",align=dir(-90)),shift(t)*p1);
dot(Label("$D$",align=dir(-90)),shift(t)*p2);

draw(obj("www.obj",paleyellow+opacity(0.9)));
draw(shift(t)*obj("www.obj",paleblue+opacity(0.9)));
axes3("$x$","$y$","$z$", Arrow3);
/*
//close(in);
write(vert[334]);
//for(int i=300; i<400;++i){
//write(i);
//write(vert[i]);
//dot(Label((string) i, fontsize(3pt)),vert[i]);
};
*/

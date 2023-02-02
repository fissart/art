if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-34";
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
import graph3;
size(300,0);
currentprojection=perspective(1,1,1);
int N=5;
real f=3+1/N;
for(int k=1; k < N; ++k) {
for(int m=1; m < N; ++m) {
for(int n=1; n < N; ++n) {
//if(m!=2){
transform3 gg=shift((n,m,k)*f)*scale3(3/length((n,m,k)));
//transform3 gg=rotate(longitude((n,m,k)),X)*scale3(length((n,m,k)))*shift((n,m,k)*f);
//draw(gg*unitcone,m==3?white+opacity(0.9):orange+opacity(0.9));
//draw(gg*unitcircle3,m==3?white+opacity(0.9):orange+opacity(0.9));
draw(gg*scale3(2)*unitplane,m==3?white+opacity(0.9):orange+opacity(0.9));
draw(gg*unitsphere,m==3?white+opacity(0.9):n==2?orange+opacity(0.9):n>1?blue+opacity(0.9):magenta);
//draw(O--(n,m,k)*f,green);
//}else{
//draw(O--gg*(n,m,k));

//}
}
}
}
axes3("$x$","$y$","$z$", Arrow3);

if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-4";
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

size(300,0);
import markers;
import geometry;
import math;

pair A=0, B=(1,0), C=(0.7,1), D=(-0.5,0), F=rotate(-90)*(C-B)/2+B;

draw(A--B);
draw(A--C);
pen p=linewidth(1mm);
draw(B--C,p);
draw(A--D);
draw(B--F,p);
label("$A$",A,SW);
label("$B$",B,S);
label("$C$",C,N);
dot(Label("$D$",D,S));
dot(Label("$F$",F,N+NW));
markangle(A,C,B);
markangle(scale(1.5)*"$\theta$",radius=40,C,B,A,ArcArrow(2mm),1mm+red);
markangle(scale(1.5)*"$-\theta$",radius=-70,A,B,C,ArcArrow,green);
markangle(Label("$\gamma$",Relative(0.25)),n=2,radius=-30,A,C,B,p=0.7blue+2);
markangle(n=3,B,A,C,marker(markinterval(stickframe(n=2),true)));
pen RedPen=0.7red+1bp;
markangle(C,A,D,RedPen,marker(markinterval(2,stickframe(3,4mm,RedPen),true)));
drawline(A,A+dir(A--D,A--C),dotted);
perpendicular(B,NE,F-B,size=10mm,1mm+red,
TrueMargin(linewidth(p)/2,linewidth(p)/2),Fill(yellow));

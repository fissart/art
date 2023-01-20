if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-15";
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

import three;
size(300,0);
currentprojection=perspective((2,9.5,2));
currentlight=Headlamp;
real radius=0.5;
triple w1=radius*dir(90,0);
triple w2=radius*dir(90,360/4);
triple w3=radius*dir(90,2*(360/4));
triple w4=radius*dir(90,3*(360/4));
triple w5=w1+abs(w2-w1)*Z;
triple w6=w2+abs(w2-w1)*Z;
triple w7=w3+abs(w2-w1)*Z;
triple w8=w4+abs(w2-w1)*Z;

draw(w1--w2--w3--w4--w1--w5--w6--w7--w8--w5^^w6--w2^^w7--w3^^w8--w4);
dot(Label("$E$"),w5,W);
dot(Label("$F$"),w6,SE);
dot(Label("$G$"),w7,E);
dot(Label("$H$"),w8,N);
dot(Label("$A$"),w1,S);
dot(Label("$B$"),w2,NE);
dot(Label("$C$"),w3,E);
dot(Label("$D$"),w4,S);

triple t1=(w5+w6)/2;
triple t2=(w6+w7)/2;
triple t3=(w7+w3)/2;
triple t4=(w8+w5)/2;
triple t5=(w1+w2)/2;
triple t6=(w6+w2)/2;
dot(Label("$M_1$"),t1,S);
dot(Label("$M_2$"),t2,N);
dot(Label("$M_3$"),t3,E);
dot(Label("$M_4$"),t4,N);
dot(Label("$M_5$"),t5,S);


triple w11=(w5+w7)/2;
triple w11w=t1+(w11-t1)*(1+sqrt(5))/2;
triple w12w=w11+(w11-t1)*(1-sqrt(5))/2;
triple n11=w11w+abs(w11w-w12w)*0.5*Z;
triple n12=w12w+abs(w11w-w12w)*0.5*Z;

dot(Label("$R$"),w11,N);
dot(Label("$S$"),w11w,S);
dot(Label("$T$"),w12w,NW);
dot(Label("$N_1$"),n11,N);
dot(Label("$N_2$"),n12,N);

/////////////////////////
triple w12=(w6+w3)/2;
triple w21w=t2+(w12-t2)*(1+sqrt(5))/2;
triple w22w=w12+(w12-t2)*(1-sqrt(5))/2;
triple n21=w21w+abs(w21w-w22w)*0.5*unit(w6-w5);
triple n22=w22w+abs(w21w-w22w)*0.5*unit(w6-w5);
//dot(Label("$w12$"),w12);dot(Label("$w21w$"),w21w);dot(Label("$w22w$"),w22w);dot(Label("$n21$"),n21);dot(Label("$n22$"),n22);

/////////////////////////
triple w13=(w7+w4)/2;
triple w31w=t3+(w13-t3)*(1+sqrt(5))/2;
triple w32w=w13+(w13-t3)*(1-sqrt(5))/2;
triple n31=w31w+abs(w31w-w32w)*0.5*unit(w7-w6);
triple n32=w32w+abs(w31w-w32w)*0.5*unit(w7-w6);
//dot(Label("$w13$"),w13);dot(Label("$w31w$"),w31w);dot(Label("$w32w$"),w32w);dot(Label("$n31$"),n31);dot(Label("$n32$"),n32);

/////////////////////////
triple w14=(w8+w1)/2;
triple w41w=t4+(w14-t4)*(1+sqrt(5))/2;
triple w42w=w14+(w14-t4)*(1-sqrt(5))/2;
triple n41=w41w+abs(w41w-w42w)*0.5*unit(w5-w6);
triple n42=w42w+abs(w41w-w42w)*0.5*unit(w5-w6);
//dot(Label("$w14$"),w14);dot(Label("$w41w$"),w41w);dot(Label("$w42w$"),w42w);dot(Label("$n41$"),n41);dot(Label("$n42$"),n42);


/////////////////////////
triple w15=(w5+w2)/2;
triple w51w=t6+(w15-t6)*(1+sqrt(5))/2;
triple w52w=w15+(w15-t6)*(1-sqrt(5))/2;
triple n51=w51w+abs(w51w-w52w)*0.5*unit(w6-w7);
triple n52=w52w+abs(w51w-w52w)*0.5*unit(w6-w7);
//dot(Label("$w15$"),w15);dot(Label("$w51w$"),w51w);dot(Label("$w52w$"),w52w);dot(Label("$n51$"),n51);dot(Label("$n52$"),n52);

/////////////////////////
triple w16=(w2+w4)/2;
triple w61w=t5+(w16-t5)*(1+sqrt(5))/2;
triple w62w=w16+(w16-t5)*(1-sqrt(5))/2;
triple n61=w61w+abs(w61w-w62w)*0.5*-Z;
triple n62=w62w+abs(w61w-w62w)*0.5*-Z;
//dot(Label("$w16$"),w16);dot(Label("$61w$"),w61w);dot(Label("$62w$"),w62w);dot(Label("$n61$"),n61);dot(Label("$n62$"),n62);

draw(w61w--n61, blue,Arrows3(size=5bp));
draw(w62w--n62, blue,Arrows3(size=5bp));
draw(w52w--n52, blue,Arrows3(size=5bp));
draw(w51w--n51, blue,Arrows3(size=5bp));
draw(w42w--n42, blue,Arrows3(size=5bp));
draw(w41w--n41, blue,Arrows3(size=5bp));
draw(w32w--n32, blue,Arrows3(size=5bp));
draw(w31w--n31, blue,Arrows3(size=5bp));
draw(w22w--n22, blue,Arrows3(size=5bp));
draw(w21w--n21, blue,Arrows3(size=5bp));
draw(w11w--n11, blue,Arrows3(size=5bp));
draw(w12w--n12, blue,Arrows3(size=5bp));
draw(t1-- w11w);
draw(t2--w21w);
draw(t3--w31w);
draw(t4--w41w);
draw(t6--w51w);
draw(t5--w61w);

draw(surface(
n11--n12--w5--n42--w8--cycle^^n11--n12--w6--n22--w7--cycle
^^n21--n22--w6--n52--w2--cycle^^n21--n22--w7--n32--w3--cycle
^^n31--n32--w7--n11--w8--cycle^^n31--n32--w3--n61--w4--cycle
^^n41--n42--w8--n31--w4--cycle^^n41--n42--w5--n51--w1--cycle
^^n51--n52--w6--n12--w5--cycle^^n51--n52--w2--n62--w1--cycle
^^n61--n62--w2--n21--w3--cycle^^n61--n62--w1--n41--w4--cycle
), surfacepen=material(palegreen+opacity(0.6)));
draw(n11--n12--w5--n42--w8--cycle^^n11--n12--w6--n22--w7--cycle
^^n21--n22--w6--n52--w2--cycle^^n21--n22--w7--n32--w3--cycle
^^n31--n32--w7--n11--w8--cycle^^n31--n32--w3--n61--w4--cycle
^^n41--n42--w8--n31--w4--cycle^^n41--n42--w5--n51--w1--cycle
^^n51--n52--w6--n12--w5--cycle^^n51--n52--w2--n62--w1--cycle
^^n61--n62--w2--n21--w3--cycle^^n61--n62--w1--n41--w4--cycle, white);

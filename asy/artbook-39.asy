if(!settings.multipleView) settings.batchView=false;
defaultfilename="artbook-39";
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

size(7cm,7cm,IgnoreAspect);

// Un premier tableau d'entiers de taille (3,4) rempli "manuellement"
int[][] x={{2,3,5,7},
{11,13,17,19},
{23,29,31,37}};
// Un second tableau d'entiers de taille (7,5) rempli avec une boucle
int[][] y=new int[7][5];
for (int i=0; i<7; ++i)
for (int j=0; j<5; ++j)
y[i][j]=i+j;

// Affichage du tableau x
for (int i=0; i<3; ++i)
for (int j=0; j<4; ++j)
label(format("%i",x[i][j]),(j,-i));
// Affichage du tableau y
for (int i=0; i<7; ++i)
for (int j=0; j<5; ++j)
label(format("%i",y[i][j]),(j,-i-4));

shipout(bbox(.5cm,Fill(white)));

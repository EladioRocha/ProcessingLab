float ordenada = 30, abscisa = 30, i=1,j=-1,arriba = 30, rectaY = 1, rectaNegY = -1, contador = 0, posInicial = 30, posNeg = 30; //<>// //<>//

float posInicial1 = 30, posNeg1 = 30;

//Variables de la ecuación
float x = 0, m = 5, b = 7, y = b, copiaB = b;

float x1 = 0, m1 = 2, b1 = 2, y1 = b1, copiaB1 = b1;

//3x + 5y = 2;
//y = (2 - 3x)/5
//y = mx + b;

void setup()
{
  println(b1);
  size(500,500);
  line(250,0,250,500);
  line(0,250,500,250);
} 

void draw()
{
 stroke(0);
  
  //Contador para marcar hasta donde pondra los puntos en la ordenada y abscisa del plano cartesiano
 if(ordenada <= 250)
 {
   if(contador == 0)
   {
     strokeWeight(6);
     point(250,250-(b*30));
     contador++;
     posInicial = (b*30)+30;   
     posNeg = (b*30)-30;
     //-------------------------------------
     stroke(#336699);
     point(250,250-(b1*30));
     posInicial1 = (b1*30)+30;
     posNeg1 = (b1*30)-30;
   }
   stroke(0);
   strokeWeight(4);
   
   //Aqui pongo los puntos en cada linea de la gráfica
   point(250,250+ordenada);
   point(250,250-ordenada);
   point(250+abscisa,250);
   point(250-abscisa,250);
   
   //funcion texto para ponerle número a las abscisas
   text(int(i++),245+abscisa,245,30);
   text(int(j--),245-abscisa,245,30);
   
   //funcion texto para ponerle los números a las ordenadas  
   text(int(rectaY++),255,255-ordenada,30); 
   text(int(rectaNegY--),255,255+ordenada,30);
   //Estructura para colocar el primer punto en la intersección y
   
   ordenada += 30;
   abscisa += 30;
 }

 //A partir de aqui se empieza a graficar la recta
 strokeWeight(6);
 y += 1 ;
 x = (y-copiaB)/m;
 point(250+(x*30),250-posInicial);
 point(250-(x*30),250-posNeg);
 posInicial += 30;
 posNeg -= 30;
 //----------------------------------------
 stroke(#336699);
 y1 += 1;
 x1 = (y1-copiaB1)/m1;
 point(250+(x1*30),250-posInicial1);
 point(250-(x1*30),250-posNeg1);
 posInicial1 += 30;
 posNeg1 -= 30;
}
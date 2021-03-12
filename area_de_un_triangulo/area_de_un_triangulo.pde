float x1,x2,x3,y1,y2,y3;
float a, b, c, semiP, a1, b1, c1, area;
int i = 0;

void setup()
{
  size(5000, 5000);
}

void draw()
{
  if (i == 3)
  {
    background(204);
    fill(255);
    triangle(x1,y1,x2,y2,x3,y3);
    /*
   AB = B - A
   AC = C - A
   BC = C - B
   */
   //Se resta los vertices para sacar la distancia entre los 2 puntos
   a = x2 - x1;
   a1 = y2 - y1;
   a = sqrt(((a*a) + (a1*a1)));
   
     
   b = x3 - x1;
   b1 = y3 - y1;
   
   b = sqrt(((b*b) + (b1*b1)));
   

   c = x3 - x2;
   c1 = y3 - y2;
   
   c = sqrt(((c*c) + (c1*c1)));
      
   semiP = (a + b + c)/2;
   i = 0;
    
   area = sqrt(semiP*(semiP - a)*(semiP - b)*(semiP - c));
   
   fill(0);
   text("El area es: "+area, 100, 100, 100); 
  }
}

void mousePressed()
{
  if(i == 0)
  {
    //A
    x1 = mouseX;
    y1 = mouseY;
    i++;
  }
  else if(i == 1)
  {
    //B
    x2 = mouseX;
    y2 = mouseY;
    i++;
  }
  else if(i == 2)
  {
    //C
    x3 = mouseX;
    y3 = mouseY;
    i++;
  }
}
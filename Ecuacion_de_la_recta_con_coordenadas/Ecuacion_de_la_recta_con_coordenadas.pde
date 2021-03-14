float ordenada = 30, abscisa = 30, i = 1, j = -1, rectaY = 1, rectaNegY = -1, contador = 0, posX, posY, posX1, posY1, pendiente = 0, contador1 = 0, interseccionY; 


void setup()
{
  size(500,500);
} 

  void draw()
{
    //Contador para marcar hasta donde pondra los puntos en la ordenada y abscisa del plano cartesiano
   if(ordenada <= 250)
   {
     if(contador1 == 0)
     {
       strokeWeight(1);
       line(250,0,250,500);
       line(0,250,500,250);
       contador1++;
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
   
   if(keyPressed)
   {
     background(204);
     ordenada = 30; 
     abscisa = 30; 
     i = 1;
     j = -1; 
     rectaY = 1; 
     rectaNegY = -1; 
     contador1 = 0;  
     contador = 0;
    }
}

void mousePressed()
{
   if(contador == 0)
   {
     posX = mouseX;
     posY = mouseY;
     contador++;
   }
   else if(contador == 1)
   {
     posX1 = mouseX;
     posY1 = mouseY;
     contador++;
     line(posX, posY, posX1, posY1);
   }
   if(contador == 2)
   {
     //Se convierten las coordenadas de pixeles a cm
     posX = (posX - 250)/30;
     posY = ((posY - 250)/30)*-1;
    
     posX1 = (posX1 - 250)/30;
     posY1 = ((posY1 - 250)/30)*-1;
     
     pendiente = (posY1 - posY)/(posX1 - posX);
     
     interseccionY = posY - (pendiente*posX);
     
     println(posX);
     println(posY);
     println(posX1);
     println(posY1);
     println("Pendiente = "+pendiente);
     println(interseccionY);
     
     contador = 0;
     
     fill(255);
     rect(0,0,245,50);
     fill(0);
     text("La ecuación de la recta es la siguiente: ",12,12,30);
     text("y = "+pendiente+"x"+" + "+interseccionY,20,25,30);
     text("Presiona cualquier tecla para reiniciar",12,40,30);
   }
}

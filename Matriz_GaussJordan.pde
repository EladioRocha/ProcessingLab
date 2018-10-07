size(500,500);
fill(0);

//El segundo miembro de la ecuación se debe poner en la misma matriz junto con el primer miembro
//Por ejemplo 4x+2y+0z = -3 se pone así {4,2,0,-3}
float matriz[][] = {{4,2,0,4},{7,2,0,2},{2,3,1,3}};

float crearPivote = 0, obtenerValor = 0, distanciaFila = 0, distanciaColumna = 30;

//Ciclo unicamente para dibujar la matriz en el canvas
for(int i = 0; i < matriz.length; i++){
  distanciaFila = 30;
  for(int j = 0; j <= matriz.length; j++){
    text(int(matriz[i][j]),distanciaFila,distanciaColumna);
    distanciaFila += 30;
  }
  distanciaColumna += 30;
}

for(int f = 0; f < matriz.length; f++){
  
  //Este valor sera el que multiplique a cada elemento de la fila
  crearPivote = 1/matriz[f][f];
      
  //Aqui se multiplica cada valor de la fila por el de "crearPivote".     
  for(int c = 0; c <= matriz.length; c++){
    matriz[f][c] *= crearPivote;
  }
  //Estos for seran para crear los 0 y asi crear la matriz identidad  
  for(int k = 0; k < matriz.length; k++){
    
    //Condición necesaria de otro modo la matriz se multiplicaria por todas las filas, y eso daria un resultado incorrecto
    if(k != f){
      
      obtenerValor = matriz[k][f]*-1;

      for(int c = 0; c <= matriz.length; c++){
        matriz[k][c] = (obtenerValor*matriz[f][c])+matriz[k][c];
      }      
    }
  }
}
text("Valores de las incognitas",distanciaFila, 50);
text("----------------------------->",distanciaFila, 60);
fill(255);
rect(300,0,500,90);
fill(0);
text("x: "+matriz[0][3],310,25);
text("y: "+matriz[1][3],310, 50);
text("z: "+matriz[2][3],310, 75);
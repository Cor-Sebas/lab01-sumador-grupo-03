// En este caso se determina como unidad de tiempo del archivo 1 ns, mientras que a la simulacion se le asigna 1 ps de precision. 
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:26:57 08/19/2019 
// Design Name: 
// Module Name:    sum1bcc 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

// Se crea un modulo de nombre sum1bcc, el cual tiene como entradas A, B y Ci y como salidas Cout, S.
module sum1bcc (A, B, Ci,Cout,S);

  input  A;
  input  B;
  input  Ci; 
  output Cout;
  output S;
// Se crea un wire de nombre st como un bus de 2-bit, siendo st[1] el mas significativo y st[0] el menos significativo.
  wire [1:0] st;
// Se asigna el bit 0 de st a la variable de salida S pues en esta se almacena el resultado de la suma. 
  assign S = st[0];
// Se asigna el bit 1 de st a la variable de salida Cout pues en esta se almacena el carry de salida. 
  assign Cout = st[1];
// Se asigna a el bus st la suma de A, B y del carry de entrada.
  assign st  = 	A+B+Ci;
 
// Se culmina el bloque creado.  
endmodule


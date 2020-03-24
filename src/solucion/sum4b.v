// En este caso se determina como unidad de tiempo del archivo 1 ns, mientras que a la simulacion se le asigna 1 ps de precision. 
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:20:31 08/19/2019 
// Design Name: 
// Module Name:    sum4b 
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
// Se crea un modulo de nombre sum4b, el cual tiene como entradas xi, yi y como salidas co,zi.
module sum4b(xi, yi,co,zi);

// Se define tanto a xi como a yi y zi como un bus de 4-bit, siendo xi,yi,zi [3] el bit mas significativo y xi,yi,zi[0] el bit menos significativo.
  input [3 :0] xi;
  input [3 :0] yi;
  output co;
  output [3 :0] zi;
// Se crean las variables c1, c2 y c3 que van a ser los wires que conecten cada uno de nuestros sumadores de 1 bit.
  wire c1,c2,c3;
// Se instancia un sum1bcc con el nombre s0, y con las entradas xi[0], yi[0], 0 en el caso del primer carry de entrada, c1 el wire de salida del primer modulo y zi[0] como el lugar para almacenar la respuesta.
// El mismo proceso se repetira hasta el bit 4, con la diferencia de que en este el carry de salida ya no sera ningun wire, tal y como se espera, pues esta sera co, la otra salida de este codigo.
  sum1bcc s0 (.A(xi[0]), .B(yi[0]), .Ci(0),  .Cout(c1) ,.S(zi[0]));
  sum1bcc s1 (.A(xi[1]), .B(yi[1]), .Ci(c1), .Cout(c2) ,.S(zi[1]));
  sum1bcc s2 (.A(xi[2]), .B(yi[2]), .Ci(c2), .Cout(c3) ,.S(zi[2]));
  sum1bcc s3 (.A(xi[3]), .B(yi[3]), .Ci(c3), .Cout(co) ,.S(zi[3]));


// Se termina el modulo
endmodule

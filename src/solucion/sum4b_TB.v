`timescale 1ns / 1ps

module sum4b_TB;

  // Se crea un registro de 4 bits
  // Inputs
  reg [3:0] xi;
  reg [3:0] yi;

	
  // Outputs
  // Los wires sirven declarar variables internas.
  wire co;
  wire [3:0] zi;

	
  // Instantiate the Unit Under Test (UUT)
  sum4b uut (
    .xi(xi), 
    .yi(yi), 
    .co(co), 
    .zi(zi)
  );

  initial begin
  // Initialize Inputs
    xi=0;
	 for (yi = 0; yi < 16; yi = yi + 1) begin
      if (yi==0)
        xi=xi+1;
      #5 $display("el valor de %d + %d = %d", xi,yi,zi) ;
    end
  end      

/* Esta parte del archivo fue eliminada a la hora de realizar la simulación en vivado pues de no ser así
se mostraba un mensaje de error y no se podia obtener simulacion. No entendemos el objetivo de estas lineas
pero creemos que el problema se encuentra en "sum4b_TB.vcd", quizas no tenemos guardada la funcion de la misma
manera.

   initial begin: TEST_CASE
     $dumpfile("sum4b_TB.vcd");
     $dumpvars(-1, uut);
     #(1280) $finish;
   end
*/
endmodule


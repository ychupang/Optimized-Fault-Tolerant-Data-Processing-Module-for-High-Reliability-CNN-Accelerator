module comparator(
    max,
    in_x,
    min,
    LBP1,
    LBP2,
    out_x
);

   input max;
   input in_x;
   input min;
   
   output LBP1;
   output LBP2;
   output out_x;
   
   buf buf1 (out_x, in_x);
  
   xor xor_max (LBP1, max, in_x);
   xor xor_min (LBP2, min, in_x);
  
endmodule
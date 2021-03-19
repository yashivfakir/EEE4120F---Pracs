1;

function corr = correlationFinder(A,B,size)
  avg_A = mean(A);
  avg_B = mean(B);
  
  num_A = 0;
  num_B = 0;
  num_Total = 0;
  
  den_A = 0;
  den_B = 0;
  den_Total = 0;
  
  for i = 1:size
    num_A = A(i) - avg_A;
    num_B = B(i) - avg_B;
    num_Total = num_Total + (num_A * num_B);
    
    den_A = sqrt( (A(i) - avg_A) * (A(i) - avg_A) );
    den_B = sqrt( (B(i) - avg_B) * (B(i) - avg_B) );
    den_Total = den_Total + (den_A * den_B);
  endfor
  
  corr = num_Total/ den_Total;
endfunction
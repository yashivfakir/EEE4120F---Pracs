1;
# createwhiten
# Creates white noise using a for loop
# returns an array of values in [-1, 1]

function result = createwhiten(n)
    
# Write your logic here
# Use a for loop
  result = zeros(n* 48000 ,1);
  for i = 1:n*48000
 
    result(i) = rand()*2-1;
   
  endfor
endfunction




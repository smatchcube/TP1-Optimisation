function y = E(xy)
  global L;
  global A;
  global B;
  n = length(xy);
  y = sum(.5 * L .* ([xy(n/2+1:n), B] - [0, xy(n/2+1:n)])); 
endfunction
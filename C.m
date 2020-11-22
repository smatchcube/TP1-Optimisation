function y = C(xy)
  global L;
  global A;
  global B;
  n = length(xy);
  y = ([xy(1:n/2), A] - [0, xy(1:n/2)]).^2 ...
       + ([xy(n/2+1:end), B] - [0, xy(n/2+1:end)]).^2  - L.^2;
endfunction

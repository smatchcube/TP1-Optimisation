function trace_chaine(xy)
  global A;
  global B;
  l = length(xy);
  X = [0, xy(1:l/2), A];
  Y = [0, xy(l/2+1:l), B];
  for i = 1:l/2+1
    line([X(i), X(i+1)], [Y(i), Y(i+1)]);
  endfor
endfunction
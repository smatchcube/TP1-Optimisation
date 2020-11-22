function J = jacob(phi, x)
  m = length(phi(x));
  n = length(x);
  J = sparse(m, n);
  for j=1:n
    J(1:end, j) = derivee(phi, j, x);
  endfor
endfunction

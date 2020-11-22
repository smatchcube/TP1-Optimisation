function d = derivee(phi, i, x)
  n = length(x);
  t = sqrt(eps) * max(1, abs(x(i)));
  e_i = double(1:n == i);
  d = (phi(x + t*e_i) - phi(x - t*e_i)) ./ (2 * t);
endfunction

function d = derivee(phi, x)
  
  t = sqrt(eps) * max(1, abs(x));
  
  d = (phi(x + t) - phi(x - t)) ./ (2 * t);
  
endfunction

function H = hess(f, x)
  n = length(x);
  H = sparse(n, n);
  for i=1:n
    t_i = sqrt(eps) * max(1, abs(x(i)));
    e_i = double(1:n == i);
    for j=1:n 
      t_j = sqrt(eps) * max(1, abs(x(j)));
      e_j = double(1:n == j);
      H(i,j) = (f(x + t_i*e_i + t_j*e_j) - f(x + t_i*e_i - t_j*e_j) - f(x - t_i*e_i + t_j*e_j) + f(x - t_i*e_i - t_j*e_j)) ...
               /(4*t_i * t_j);
    endfor
  endfor
endfunction

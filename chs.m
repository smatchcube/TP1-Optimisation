function [M, c, g, a, hl, indic] = chs(indic, xy, lm)
  global L;
  global A;
  global B;
  n = length(xy);
  n_b = n/2 + 1;
  m = n + n_b;
  M = sparse(m, m);
  X = zeros(m, 1);
  Y = zeros(m, 1);
  while 1
    ## Calcul du second membre
    Y(1:n) = -arrayfun(@(i) derivee(@E, i, xy), 1:n);
    Y(n+1:end) = -C(xy);
    
    ## Calcul de la matrice à gauche
    Jc = jacob(@C, xy);
    M(n+1:end, 1:n) = Jc;
    M(1:n, n+1:end) = Jc';
    M(1:n,1:n) = hess(@(x) E(x) + dot(lm,C(x)), xy);
    #disp(full(M));
    #disp(Y);
    
    ## On résoud le système pour obtenir delta_x et lambda
    X = M\Y;
    
    xy += X(1:n)'; # mise à jour de xy par le pas calculé
    lm = X(n+1:end); # mise à jour de lambda
    
    if norm(X(1:n)) < 1/100;
      break;
    endif
  endwhile
  switch indic
    case 1
      trace_chaine(xy);
    case 2
      e = E(xy);
      c = C(xy)';
    case 4 # a faire
    case 5
  endswitch
endfunction
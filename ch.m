## Données du problème

global L = [0.7, 0.5, 0.3, 0.2, 0.5];

global A =  1;
global B = -1;

xy = [ 0.2,  0.4,  0.6,  0.8...
      -1.0, -1.5, -1.5, -1.3];

lm = repelem(1, length(L));

chs(1, xy, lm);
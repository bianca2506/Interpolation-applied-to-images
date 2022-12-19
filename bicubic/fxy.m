function r = fxy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de x si y a lui f in punctul (x, y).
    % =========================================================================
    
    % TODO: calculeaza derivata
    [m n nr_colors] = size(f);
    
    if x == 1
      r = 0;

    elseif x == n
      r = 0;
    
    elseif y == 1
      r = 0;

    elseif y == m
      r = 0;

    else
    r = (f(y - 1, x - 1) + f(y + 1, x + 1) - f(y - 1, x + 1) - f(y + 1, x - 1)) / 4;
    endif

endfunction
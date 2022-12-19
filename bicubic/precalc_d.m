function [Ix, Iy, Ixy] = precalc_d(I)
    % =========================================================================
    % Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale 
    % imaginii I pentru fiecare pixel al acesteia
    % =========================================================================
    
    % obtine dimensiunea imaginii
    [m n nr_colors] = size(I);
    
    % TODO: fa cast matricii I la double
    I = double(I);

    % TODO: calculeaza matricea cu derivate fata de x Ix
    for y = 1 : m
      for x = 1 : n
        deriv_x = fx(I, x, y);
        Ix(y, x) = deriv_x;
        
        % TODO: calculeaza matricea cu derivate fata de y Iy
        
        deriv_y = fy(I, x, y);
        Iy(y, x) = deriv_y;
        
        % TODO: calculeaza matricea cu derivate fata de xy Ixy
        
        deriv_xy = fxy(I, x, y);
        Ixy(y, x) = deriv_xy;
      endfor
    endfor

endfunction

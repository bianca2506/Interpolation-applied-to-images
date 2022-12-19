function a = bilinear_coef(f, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaza coeficientii a pentru interpolarea biliniara intre punctele
    % (x1, y1), (x1, y2), (x2, y1) si (x2, y2)
    % =========================================================================
    
    % TODO: calculeaza matricea A
    A = [1 x1 y1 x1*y1; 1 x1 y2 x1*y2; 1 x2 y1 x2*y1; 1 x2 y2 x2*y2];

    % TODO: calculeaza vectorul b
    b = [f(y1, x1); f(y2, x1); f(y1, x2); f(y2, x2)]; 
    b = double(b);    

    % TODO: calculeaza coeficientii
    c = inv(A) * b;
    a = c;

endfunction

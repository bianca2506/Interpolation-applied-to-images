function out = bilinear_2x2(f, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare biliniara pe imaginea 2x2 f cu puncte intermediare
    % echidistante.
    % f are valori cunoscute in punctele (1, 1), (1, 2), (2, 1) si (2, 2).
    % 
    % Parametrii:
    % - f = imaginea ce se doreste sa fie interpolata
    % - STEP = distanta dintre doua puncte succesive
    % =========================================================================


    % defineste coordonatele x si y ale punctelor intermediare
    x_int = 1 : STEP : 2;
    y_int = 1 : STEP : 2;

    % afla nr. de puncte
    n = length(x_int);

    % cele 4 punctele incadratoare vor fi aceleasi pentru toate punctele din
    % interior
    x1 = y1 = 1;
    x2 = y2 = 2;

    % TODO: calculeaza coeficientii de interpolare biliniara folosind bilinear_coef
    a = bilinear_coef(f, x1, y1, x2, y2);

    % TODO: initializeaza rezultatul cu o matrice n x n plina de zero
    A = zeros(n, n);

    % parcurge fiecare pixel din imaginea finala
    for i = 1 : n
        for j = 1 : n
            % TODO: calculeaza valoarea pixelului
            a0 = a(1,:);
            a1 = a(2,:);
            a2 = a(3,:);
            a3 = a(4,:);
            
            A(j,i) = a0 + a1 * x_int(i) + a2 * y_int(j) + a3 * x_int(i) * y_int(j);

        endfor
    endfor

    % TODO: converteste rezultatul la uint8 pentru a ramane o imagine
    A = uint8(A);
    out = A;

endfunction

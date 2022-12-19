function out = nn_2x2_RGB(img, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare nearest neighbour pe imaginea 2x2 img cu puncte
    % intermediare echidistante.
    % img este o imagine colorata RGB.
    % =========================================================================

    % TODO: extrage canalul rosu al imaginii
    red_chanel = img(:, :, 1);

    % TODO: extrage canalul verde al imaginii
    green_chanel = img(:, :, 2);

    % TODO: extrace canalul albastru al imaginii
    blue_chanel = img(:, :, 3);


    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    red = nn_2x2(red_chanel, STEP);
    green = nn_2x2(green_chanel, STEP);
    blue = nn_2x2(blue_chanel, STEP);

    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    % Hint: functia cat
    img = cat(3, red, green, blue);
    out = img;

endfunction

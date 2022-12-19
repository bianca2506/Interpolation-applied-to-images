function out = bicubic_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img a.i. aceasta sa fie de dimensiune p x q.
    % Imaginea img este colorata.
    % Practic, apeleaza de 3 ori functia nn pe fiecare canal al imaginii.
    % =========================================================================

    % TODO: extrage canalul rosu al imaginii
    red_chanel = img(:, :, 1);

    % TODO: extrage canalul verde al imaginii
    green_chanel = img(:, :, 2);

    % TODO: extrace canalul albastru al imaginii
    blue_chanel = img(:, :, 3);


    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    red = bicubic_resize(red_chanel, p, q);
    green = bicubic_resize(green_chanel, p, q);
    blue = bicubic_resize(blue_chanel, p, q);

    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    % Hint: functia cat
    img = cat(3, red, green, blue);
    out = img;

endfunction
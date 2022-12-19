function out = bilinear_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica interpolare bilineara pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
    % TODO: extrage canalul rosu al imaginii
    red_chanel = img(:, :, 1);

    % TODO: extrage canalul verde al imaginii
    green_chanel = img(:, :, 2);

    % TODO: extrace canalul albastru al imaginii
    blue_chanel = img(:, :, 3);


    % TODO: aplică rotația pe fiecare canal al imaginii
    red = bilinear_rotate(red_chanel, rotation_angle);
    green = bilinear_rotate(green_chanel, rotation_angle);
    blue = bilinear_rotate(blue_chanel, rotation_angle);


    % TODO: reconstruiește imaginea RGB finala (hint: cat)
    img = cat(3, red, green, blue);
    out = img;
    
endfunction
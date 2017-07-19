function J = shrnk(I, num_rows_removed, num_cols_removed)

[rows, cols, ~] = size(I);

for i = 1:num_rows_removed

    G = imenergy(I);
    new = zeros(rows - i, cols);
    red = I(:, :, 1);
    green = I(:, :, 2);
    blue = I(:, :, 3);

    hSeam = horizontal_seam(G);
    red = remove_horizontal_seam(red, hSeam);
    green = remove_horizontal_seam(green, hSeam);
    blue = remove_horizontal_seam(blue, hSeam);
    
    new(:, :, 1) = red;
    new(:, :, 2) = green;
    new(:, :, 3) = blue;
    I = new;
end

%rotate image
I = permute(I, [2 1 3]);
[rows, cols, ~] = size(I);

for j = 1:num_cols_removed
    
    G = imenergy(I);
    new = zeros(rows - j, cols);
    red = I(:, :, 1);
    green = I(:, :, 2);
    blue = I(:, :, 3);

    hSeam = horizontal_seam(G);
    red = remove_horizontal_seam(red, hSeam);
    green = remove_horizontal_seam(green, hSeam);
    blue = remove_horizontal_seam(blue, hSeam);
    
    new(:, :, 1) = red;
    new(:, :, 2) = green;
    new(:, :, 3) = blue;
    I = new;

end

J = permute(I, [2 1 3]);

end

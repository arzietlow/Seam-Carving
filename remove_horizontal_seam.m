%Each entry in vector S is an integer-valued row
%number indicating which pixel in that column should be removed

function J = remove_horizontal_seam(I, S)

I = im2double(I);
[numRows, numCols] = size(I);
index = 0;
offset = 0;

for i = 1:size(S, 2)

    row = S(i);
    index = index + row + offset;
    I(index) = inf;
    offset = numRows - mod(index, numRows); 
    if (numRows == offset)
        offset = 0;
    end
end

I(I == inf) = [];
J = reshape(I, numRows - 1, numCols);

end

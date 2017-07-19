%Returns a vector of length equal to the number of columns 
%in E such that each entry in vector S is an integer-valued row number 
%indicating which pixel in that column should be removed.

%Computes, left to right, the cumulative minimum energy array, M, 
%as described in the paper.

function S = horizontal_seam(E)

[m, n] = size(E);
cumenergies = zeros(m+2, n);
cumenergies(1, :) = Inf;
cumenergies(m+2, :) = Inf;
pointers = zeros(m, n); 
S = zeros(1, n);

for u = 1:m 
    cumenergies(u + 1, :) = E(u, :);
end

for i = 2:n
    for j = 1:m
        p = j + 1;
        A(1) = cumenergies(p-1, i-1);
        A(2) = cumenergies(p, i-1);
        A(3) = cumenergies(p+1, i-1);
        cumenergies(p, i) = min(A) + E(j, i); 
        [~, z] = min(A);
        pointers(j, i) = (z - 2);
    end
end

rightCol = cumenergies(:, n);
[~, row] = min(rightCol);


for i = 1:n
    S(i) = row;
    direction = pointers(row, n -(i-1));
    row = row + direction;
end

S = S(end:-1:1);

end



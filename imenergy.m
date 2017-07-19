function E = imenergy(I)

J = im2double(I);
J = rgb2gray(J);
E = imgradient(J);

end

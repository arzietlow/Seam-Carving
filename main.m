%Main script - Arzietlow Hw3

I = imread('imagename.jpeg');
result = shrnk(I, 100, 100);
imwrite(result, 'result.jpg');



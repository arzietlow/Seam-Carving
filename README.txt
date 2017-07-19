Andy Zietlow 
CS 534 - Computational Photography - Homework #3

Problem 2.
The first image, 2a, is the energy function of the input image. 
It has light pixels in areas of high information and darker pixels in areas of low information.
An area having a higher amount of information is equivalent to that area containing a steep gradient in pixel intensity. 

The second image, 2b, is the representation of all cumulative path costs for each pixel in each column.
This value at each pixel index is equal to the pixel's energy plus the minimum cost of the path to one of 3 pixels in the previous column.
The values thus increase from left to right, resulting in an image that starts dark on the far left and gradually gets brighter as it progresses.


Problem 3.
The two seams drawn are optimal because they follow a path of pixels that are relatively unnoticable. 
The paths followed by both horizontal and vertical seams gravitate towards the areas of near constant pixel intensity. 
Removing these seams would be least noticable because they are not part of an abrupt change in pixel intensity.


Problem 4.
This image is an interesting successful result of removing many columns. It worked well because the main point of the image's focus, the castle, takes
up a relatively small percent of the actual image size. This means that many vertical seams could be carved around it without removing its important pixels.
The most noticable part of the image is retained with no artifacts.


Problem 5.
This image is an interesting unsuccessful result of removing many rows. At first glance it seems that this image would be good for seam carving because it has
a relatively uninteresting scene. There are not many sharp details to the image. But after carving many rows, the horizon of the water has been cut down in a very
obvious way. This seems to be because the seams were unevenly carved through the clouds above. 
% Creates a object detector 
DetectFace = vision.CascadeObjectDetector;

I = imread('picturewicture.jpg');
bboxes = DetectFace(I);

IFaces = insertObjectAnnotation(I,'rectangle', bboxes, 'Faces');
figure
imshow(IFaces)
title('Faces are Detected');

DetecttheBody = vision.CascadeObjectDetector('BodyUpper');
DetecttheBody.MinSize = [ 30, 60];
DetecttheBody.MergeThreshold = 25;

I2 = imread('picturewicture.jpg');
bboxBody = DetecttheBody(I2);

IBody = insertObjectAnnotation(I2, 'rectangle',bboxBody, 'BodyUpper');
figure
imshow(IBody)
title('Showing Detected Upper Boodies');
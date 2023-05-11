% Will create a cascading object that can simply detect.
DetectFace = vision.CascadeObjectDetector();

% Looks inside a video frame and run a detector alongside it

videoReader = videoReader("vid 7.avi");


videoFrame = readFrame(videoReader);
bbox = step(DetectFace, videoFrame);

% Creates a box on screen that goes around the face it wil be detecting
videoFrame = insertShape(videoFrame, "circle", bbox);
figure; imshow(videoFrame); title("Face Displayed Is Detecting");

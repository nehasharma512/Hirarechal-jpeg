function [vid] = readVideo()
vidPath = 'C:/Users/lenovo/Desktop/Hirarechal-jpeg-master/Hirarechal-jpeg-master/SampleVideo_640x360_1mb.mp4';
framePath = 'C:/Users/lenovo/Desktop/Hirarechal-jpeg-master/Hirarechal-jpeg-master/frames/';
vid = VideoReader(vidPath);
n = vid.NumberOfFrames;
for i = 1:1:n
  frames = read(vid,i);
  imwrite(frames,[framePath int2str(i), '.jpg']);
end 
end

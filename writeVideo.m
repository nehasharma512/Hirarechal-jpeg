function writeVideo()
original = 'C:/Users/lenovo/Desktop/Hirarechal-jpeg-master/Hirarechal-jpeg-master/frames/';
decoded = 'C:/Users/lenovo/Desktop/Hirarechal-jpeg-master/Hirarechal-jpeg-master/Results/';

fullname = fullfile(original,'original.mp4');
video1 = VideoWriter(fullname); %create the video object
fullname = fullfile(decoded,'decoded.mp4');
video2 = VideoWriter(fullname);
open(video1); %open the file for writing
open(video2);
for i=1:10 %where N is the number of images

  I1 = imread([original int2str(i),'.jpg']); %read the next image
  I2 = imread([decoded int2str(i),'.jpg']); %read the next image
  writeVideo(video1,I1); %write the image to file
  writeVideo(video2,I2);
end
close(video1); %close the file
close(video2);

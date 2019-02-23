function videoCompression()
vidPath = 'C:/Users/lenovo/Desktop/Hirarechal-jpeg-master/Hirarechal-jpeg-master/SampleVideo_640x360_1mb.mp4';
vid = VideoReader(vidPath);
totalFrames = vid.NumberOfFrames;
n = totalFrames/4;
for i = 1:n
    % GOP - one set of I, B, P frames
    frame1 = read(vid,4*(i-1)+1);
    frame2 = read(vid,4*(i-1)+2);
    frame3 = read(vid,4*(i-1)+3);
    frame4 = read(vid,4*(i-1)+4);
    
    % write original video frames
    imwrite(frame1,['frames/' int2str(4*(i-1)+1), '.jpg']);
    imwrite(frame2,['frames/' int2str(4*(i-1)+2), '.jpg']);
    imwrite(frame3,['frames/' int2str(4*(i-1)+3), '.jpg']);
    imwrite(frame4,['frames/' int2str(4*(i-1)+4), '.jpg']);
    
    % create I-frame from frame1
    frame1YUV = rgb2yuv(frame1);
    
    IframeY = blockproc(frame1YUV.Y,[4 4],'intra_coding');
    IframeU = blockproc(frame1YUV.U,[4 4],'intra_coding');
    IframeV = blockproc(frame1YUV.V,[4 4],'intra_coding');
    
    IframeYUV = struct('Y',IframeY,'U',IframeU,'V',IframeV);
    IframeRGB = yuv2rgb(IframeYUV);
    
    imwrite(IframeRGB,['Results/I',4*(i-1)+1,'.jpg']);
    
    % create P-frame from I-frame
    
    
    % create B1-frame from frame2
    
    % create B2-frame from frame3
  
end 
end

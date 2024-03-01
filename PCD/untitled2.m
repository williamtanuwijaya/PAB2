video = VideoReader('traffic.avi');
nframe = video.NumberOfFrames;
frame_th = 1;
background = rgb2gray(read(video, frame_th));

for frame_th = 1 : nframe;
    frame = read(video, frame_th);
    motion = abs(frame-background);
    imshow(motion);
end
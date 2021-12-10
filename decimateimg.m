function dec_img = decimateimg(image, DEC_F)
%%%RED CHANNEL
redChannel = image(:, :, 1);
OneDred = redChannel(1,:);
OneDred = im2double(OneDred);
dec_img = decimate(OneDred,DEC_F);

len = size(redChannel);
for idx = 2:1:(len(1))
OneDred = redChannel(idx,:);
OneDred = im2double(OneDred);
dec_img = [dec_img; decimate(OneDred,DEC_F)];
end

%%%BLUE CHANNEL
blueChannel = image(:, :, 3);
OneDblue = blueChannel(1,:);
OneDblue = im2double(OneDblue);
dec_img1 = decimate(OneDblue,DEC_F);

len = size(blueChannel);
for idx = 2:1:(len(1))
OneDblue = blueChannel(idx,:);
OneDblue = im2double(OneDblue);
dec_img1 = [dec_img1; decimate(OneDblue,DEC_F)];
end

%%%GREEN CHANNEL
greenChannel = image(:, :, 2);
OneDgreen = greenChannel(1,:);
OneDgreen = im2double(OneDgreen);
dec_img2 = decimate(OneDgreen,DEC_F);

len = size(greenChannel);
for idx = 2:1:(len(1))
OneDgreen = greenChannel(idx,:);
OneDgreen = im2double(OneDgreen);
dec_img2 = [dec_img2; decimate(OneDgreen,DEC_F)];
end

dec_img = cat(3,dec_img,dec_img2,dec_img1);
dec_img = im2uint8(dec_img);
end
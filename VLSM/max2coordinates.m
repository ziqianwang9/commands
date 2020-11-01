%%find the max intensity coordinates
V=spm_vol('Average_AAT_05_thresh.nii');
img=spm_read_vols(V);
max_image=max(max(max(img(:,:,:))));
[r,c,v] = ind2sub(size(img),find(img == max_image));
rcv = [r c v]
% y = row  ; x = column; z = ventrical; 
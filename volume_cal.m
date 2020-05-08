%1.export the fisrt column in the file 
%2.divided by the aal/IIT volume
%3.transpose from column to row
clear;clc;close all;
proportion_all=[];
proportion_IIT=[];
n=1;
for i = 1:240
    %load files' name. Justify if the files exit.
    file_name = [num2str(i) '.txt'];
    save_name = ['S' num2str(i) '_aal_volume.mat'];
    aal_file_name = ['aal_volume.txt'];
    aal_volume = textread(aal_file_name);
    if exist(file_name, 'file')
        text = textread(file_name);
        sub_volume = text(:,1);
        sub_aal_proportion = sub_volume ./ aal_volume(:,1);
        sub_aal_proportion = sub_aal_proportion';
        save(save_name,'sub_aal_proportion');
        proportion_all(n,:)=sub_aal_proportion;
        n=n+1;
    end
end    
n=1;
for i = 1:240
    %load files' name. Justify if the files exit.
    file_name = [num2str(i) '_tract.txt'];
    save_name = ['S' num2str(i) '_IIT_volume.mat'];
    IIT_file_name = ['IIT_volume.txt'];
    IIT_volume = textread(IIT_file_name);
    if exist(file_name, 'file')
        text = textread(file_name);
        sub_volume = text(:,1);
        sub_IIT_proportion = sub_volume(1:24) ./ IIT_volume(:,1);
        sub_IIT_proportion = sub_IIT_proportion';
        save(save_name,'sub_IIT_proportion');
        proportion_IIT(n,:)=sub_IIT_proportion;
        n=n+1;
    end
end    
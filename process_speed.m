function [ rez ] = process_z(ans)
answer=ans;
count1s=zeros(100,1);
count2s=zeros(100,1);
cout1s=zeros(size(answer,2),100);
cout2s=zeros(size(answer,2),100);
for i=1:size(answer,2) % simulation
    count1s=zeros(100,1);
    count2s=zeros(100,1);
    speed(i)=min(100, size(answer(i).it,2));
    for j=1:size(answer(i).search_s,2) % time
        for jj=1:size(answer(i).search_s,1) % agents
        if answer(i).search_s(jj, j)==1 
            count1s(j)=count1s(j)+1;
        else count2s(j)=count2s(j)+1;
        end
        end
    end
    
 cout1s(i, :)=count1s/100;
 cout2s(i, :)=count2s/100;

% rez.network=ans.network;
% rez.locals=ans.locals;
% rez.social_l=ans.social_l;
end

rez.speed=mean(speed);
for i=1:size(cout1s,2)
    rez.socl(i)=mean(cout1s(:,i));
    rez.locs(i)=mean(cout2s(:,i));
end

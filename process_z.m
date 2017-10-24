function [ rez ] = process_z(ans, bench, index)
answer=ans;
count1s=zeros(size(answer,2));
count2s=zeros(size(answer,2));

for i=1:size(bench,2)
    maxbench(i)=max(bench(i).it(:, end));
end
speed=zeros(size(answer,2),1);
for i=1:size(answer,2)
    speed(i)=min(index, size(answer(i).it,2)); 
    maxs(i)=max(answer(i).it(:,min(index, end)));
 
 
    for j=1:size(answer(i).search_s,1)
    if answer(i).search_s(j)==1 count1s(i)=count1s(i)+1;
    else count2s(i)=count2s(i)+1;
    end
    end
    
 coun1s(i)=count1s(i)/j;
 coun2s(i)=count2s(i)/j;

rez.m=maxs;
rez.mm(i)=maxs(i)/ans(i).max;
if maxs(i)==answer(i).max
    rez.times_max(i)=1;
else rez.times_max(i)=0;
end
         


rez.sl=count1s/1000;
rez.ls=count2s/1000;
% rez.network=ans.network;
% rez.locals=ans.locals;
% rez.social_l=ans.social_l;
rez.k=ans.k;
rez.n=ans.n;
rez.max(i)=ans(i).max;
rez.size_n=ans.size_n;

for j=1:index
    if size(answer(i).it,2)>=j
rez.averag(i,j)=mean(answer(i).it(:,j)/answer(i).max);
rez.maxcollect(i,j)=max(answer(i).it(:,j))/answer(i).max;
    else rez.averag(i,j)=rez.averag(i, j-1);
         rez.maxcollect(i,j)=rez.maxcollect(i, j-1);
    end
end
for j=1:index
    if size(answer(i).it,2)>=j
div(i,j)=size(unique(answer(i).it(:,j)),1);
    else div(i,j)=0;
    end
end
end

rez.average=mean(rez.mm);
rez.st=std(rez.mm);
rez.sum=sum(rez.times_max);
rez.speed=mean(speed);


basin_left=zeros(1, size(bench,2));
for i=1:size(answer,2)
    if maxbench(i)==answer(i).max&&maxs(i)~=answer(i).max
        basin_left(i)=1;
    end
end

rez.basins=sum(basin_left);

for j=1:index
rez.diversity(j)=mean(div(:,j));
end
end
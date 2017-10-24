for i=1:100
    c=0;
    if size(ans(i).it, 2)<25
        c=size(ans(i).it,2); 
        for ii=1:100
            a=0; 
            a=ans(i).it(ii, c);
            for j=c+1:25
                ans(i).it(ii,j)=a;
            end
        end
    end
end
surfx=ans(1).it/ans(1).max;
for i=2:100
    surfx=[surfx; ans(i).it/ans(i).max];
end

for i=1:25
    surfx=sortrows(surfx, i);
end




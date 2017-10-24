function [ step1 ] = local_searchLF(step0, k, N, F)
%UNTITLED2 Summary of this function goes here
%   local search: randomly flip one position. if better keep

    
    step1=step0;
   
        i=randi(N); 
        if F.x(bi2de(flipz(step0,i))+1)>F.x(bi2de(step0)+1)
            step1=flipz(step0, i);
        end
end


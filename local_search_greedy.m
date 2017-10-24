function [ step1 ] = local_search_greedy(step0, k, N, F)
%UNTITLED2 Summary of this function goes here
%   local search: all neighbouring points are considered until a position
%   with improved performance is found. 
%   bonus for being the top player in a given round. small. 

  
    step1=step0;
    p=true; 
    for i=1:N
        if F.x(bi2de(flipz(step0,i))+1)>F.x(bi2de(step0)+1)&&p
            step1=flipz(step0, i);
            p=false;
        end
    end
end


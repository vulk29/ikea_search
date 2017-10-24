function [ steptemp ] = flipz( step0, i)
%UNTITLED4 Summary of this function goes here
%   simple bit flip
    steptemp=step0;
    if steptemp(i)==1 steptemp(i)=0;
    else steptemp(i)=1;
    end

end


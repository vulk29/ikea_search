function [x0]=initialize(N)
x0=zeros(1, N);
for ii=1:N
    x0(ii)=randi(2,1)-1;
end

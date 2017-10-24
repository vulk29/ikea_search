function [ agent1 ] = copy_axelrod(agent1, agent2 )
%UNTITLED Summary of this function goes here
%   axelrod
stack=[];
for i=1:length(agent1.currentX)
    if agent1.currentX(i)~=agent2(i) 
        stack=[stack, i];
    end
end

j=stack(randi(length(stack)));

agent1.currentX(j)=agent2(j);

end


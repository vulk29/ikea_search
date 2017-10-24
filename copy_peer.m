function [ agent1 ] = copy_peer(agent1, agent2, param)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
if param==1 agent1=copy_axelrod(agent1, agent2);
else agent1=immitate(agent1, agent2);
end


end


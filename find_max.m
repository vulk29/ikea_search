function[agent_max]= find_max(ii, rangem, agent, param5, F)
      agent_max=agent(agent(ii).network(rangem(1))).formerX; 
      max_sol=F.x(bi2de(agent(agent(ii).network(rangem(1))).formerX)+1); 
          for i3=2:size(rangem,2)
              if max_sol< F.x(bi2de(agent(agent(ii).network(rangem(i3))).formerX)+1)
                  agent_max=agent(agent(ii).network(rangem(i3))).formerX; 
                  max_sol=F.x(bi2de(agent(agent(ii).network(rangem(i3))).formerX)+1);
              end
          end
end
function [agent0] = updatex_econ(step0, k, N, agent, ii, param, param2, param3, param4, param5, param6, F, CONFORMITY)

if param5==0
    param5=size(agent, 2)-1;
end
%   how many people i look at before i engage in social learning=3
    step1=step0;
    stepped=0; 
    agent(ii).search_s=0;

    if size(agent(ii).network, 1)&&param
        rangem=randperm(size(agent(ii).network,1), param5);
    end
    
    if size(agent(ii).network, 1)&&param
	
          if CONFORMITY==0
         
                    agent_max=find_max(ii, rangem, agent, param5, F);
              
                    if F.x(bi2de(agent(ii).currentX)+1)+param6*max(F.x)/100<F.x(bi2de(agent_max)+1)
                        agent(ii)=copy_peer(agent(ii), agent_max, param3);
                        agent(ii).search_s=1;
                       
                    end
                
                 if agent(ii).search_s==0 
                        agent(ii).currentX=local_search(step0, k, N, param4, F);
                        agent(ii).search_s=2;
                 end
          
          
          else
              [agent_f, test_f]=find_freq(ii, rangem, agent, param5, F);
              if test_f>0
                  if F.x(bi2de(agent(ii).currentX)+1)+param6*max(F.x)/100<F.x(bi2de(agent_f)+1)
                    agent(ii)=copy_peer(agent(ii), agent_f, param3);
                    agent(ii).search_s=1;
                  end
              end
              if agent(ii).search_s==0 
                        agent(ii).currentX=local_search(step0, k, N, param4, F);
                        agent(ii).search_s=2;
              end
          end
         
       % if org is off then just do local search             
       else agent(ii).currentX=local_search(step0, k, N, param4);
            agent(ii).search_s=2;
       end
             
      
   agent0=agent(ii);
    

end

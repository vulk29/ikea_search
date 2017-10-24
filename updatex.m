function [agent0] = updatex(step0, k, N, agent, ii, param, param2, param3, param4, param5, F, CONFORMITY)
%updatex(agent(ii).currentX, k, MN, agent, ii, ORGON, STYPE, CTYPE, LSTYPE, FORSIGHT);
% param =orgon
% param2 = stype -> full or SW
% param3 = ctype -> copying type
% param4 = lstype -> LF vs regular
if param5==0 % if forsight is set to 0, agents can see everyone. otherwise param5/forsight indicates the number of people i look at before i engage in social learning
    param5=size(agent, 2)-1;
end
%   how many people i look at before i engage in social learning=3
    step1=step0;
    stepped=0; 
%     load G;
   
    p=0;
    agent(ii).search_s=0;
%     p=randi(length(agent(ii).currentX));
    
if size(agent(ii).network, 1)&&param % if org on, do social learning; else.. right now just ls. 
       rangem=randperm(size(agent(ii).network,1), param5);
end
    if size(agent(ii).network, 1)&&param
	    mm=1;
    if CONFORMITY==0
          
        while p<param5&&mm<=size(agent(ii).network, 1) 
%                   ham(agent(ii).currentX, agent(agent(ii).network(mm)).currentX)
                    p=p+1;
                    if F.x(bi2de(agent(ii).currentX)+1)<F.x(bi2de(agent(agent(ii).network(rangem(mm))).formerX)+1)
                    agent(ii)=copy_peer(agent(ii), agent(agent(ii).network(rangem(mm))), param3);
                    agent(ii).search_s=1;
                    p=param5;
                    end
          mm=mm+1;           
        end
        if agent(ii).search_s==0 
                agent(ii).currentX=local_search(step0, k, N, param4, F);
                agent(ii).search_s=2;
        end
          
          else
              peersols=agent(agent(ii).network(rangem(1))).formerX; 
              peersolsf=F.x(bi2de(agent(agent(ii).network(rangem(1))).formerX)+1); 
          for i3=2:param5
              peersols=[peersols; agent(agent(ii).network(rangem(i3))).formerX];
              peersolsf=[peersolsf;F.x(bi2de(agent(agent(ii).network(rangem(i3))).formerX)+1)]; 
              
          end
          test2=1;
          if size(unique(peersolsf),1)~=param5
                unqx = unique(peersolsf);
                valueCount = sort(histc(peersolsf, unqx));
                if size(valueCount,1)>1
                if valueCount(end)==valueCount(end-1)
                    test2=0;
                end
                end
                sortedvalue=sort(peersolsf);
                max1=max(sortedvalue);
                if max1~=sortedvalue(end-1)
                    test2=0;
                end
               
              if test2~=0
                  if F.x(bi2de(agent(ii).currentX)+1)<max1
                      temp=find(peersolsf==max1);
                      temp=temp(1);
                      temp=peersols(temp,:);
                  agent(ii).currentX=temp;
                  agent(ii).search_s=1;
                  else
                  agent(ii).currentX=local_search(step0, k, N, param4, F);
                        agent(ii).search_s=2;
                  end
               else
                  agent(ii).currentX=local_search(step0, k, N, param4, F);
                        agent(ii).search_s=2;
              end
          else
                  agent(ii).currentX=local_search(step0, k, N, param4, F);
                        agent(ii).search_s=2;
          end
    end
          else
                  agent(ii).currentX=local_search(step0, k, N, param4, F);
                        agent(ii).search_s=2;
          end
                    
    
   
%     if param&&param2<3 agent(ii)=generate_sn(ii, agent, param2);  
%     end
%     
    agent0=agent(ii);
    
%     if b>p2 step1=random_search(step0, k);
%     stepped=2; 
%     end
%         
   
end

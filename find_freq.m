function[agent_f, test_f]= find_freq(rangem, agent, param5)
   peersols=agent(agent(ii).network(rangem(1))).formerX; 
   peersolsf=F.x(bi2de(agent(agent(ii).network(rangem(1))).formerX)+1); 
   
   for i3=2:param5
              peersols=[peersols; agent(agent(ii).network(rangem(i3))).formerX];
              peersolsf=[peersolsf;F.x(bi2de(agent(agent(ii).network(rangem(i3))).formerX)+1)]; 
   end
          test_f=1;
          if size(unique(peersolsf),1)~=param5
                unqx = unique(peersolsf);
                valueCount = sort(histc(peersolsf, unqx));
                if size(valueCount,1)>1
                if valueCount(end)==valueCount(end-1)
                    test_f=0;
                end
                end
                sortedvalue=sort(peersolsf);
                max1=max(sortedvalue);
                if max1~=sortedvalue(end-1)
                    test_f=0;
                end
          else
              test_f=0;
          end
          
      if test_f==1
         temp=find(peersolsf==max1);
         temp=temp(1);
         agent_f=peersols(temp,:);
      end
end
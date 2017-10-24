function [it, search_s ] = simulation_engine(iterations, k, MN, agentsnumber, ORGON, STYPE, MWTYPE, CTYPE, LSTYPE,FORSIGHT, ECON, F, CONFORMITY)
%UNTITLED Summary of this function goes here
it=[];
search_s=[]; 
     for ii=1:agentsnumber
        rng(ii,'twister');
        agent(ii).currentX=initialize(MN);
        agent(ii).formerX=agent(ii).currentX; 
        agent(ii).iterates=[];
        agent(ii).iteratez=[];
        agent(ii).network=[];
        agent(ii).search_s=[];
        agent(ii).rank=0;
        
     end
     
 if STYPE==3 
%         G = addnode(G,agentsnumber);
%         save G G;
        for i=1:agentsnumber
            for j=1:agentsnumber
                if i~=j 
                    agent(i).network=[agent(i).network; j];
% test this out~!!!
                end
            end
        end
 end
     
    if STYPE==4 
        
       filename=strcat('/gpfs/gss1/home/vuculescu/simulation/simulation/', int2str(MWTYPE));
      %filename=strcat(int2str(MWTYPE));
        g=load(filename);
        graf=g.ans;
        for i=1:size(agent, 2)
             agent(i).network=neighbors(graf,i); 
        end
        
     end
    index=0;
    test=0;
        while test==0&&index<iterations %as long as there are agents with different sols or the max number of iterations has not been reached.
             index=index+1; 
             iti=[];
             its=[];
             test2=1;
	     
             for ii=1:agentsnumber  
                agent(ii)=updatex_econ(agent(ii).currentX, k, MN, agent, ii, ORGON, STYPE, CTYPE, LSTYPE, FORSIGHT, ECON, F, CONFORMITY);
        
                agent(ii).iterates=[agent(ii).iterates, F.x(bi2de(agent(ii).currentX)+1)];
                iti=[iti;  F.x(bi2de(agent(ii).currentX)+1)]; 
                its=[its; agent(ii).search_s];
                testsol=agent(1).currentX;
                if ii>1
                    if ~isequal(agent(ii).currentX, testsol)
                        test2=0;
                    end
                end
             end
             
            for ii=1:agentsnumber  
             agent(ii).formerX=agent(ii).currentX; 
            end
            test=test2;
            it=[it, iti];
            search_s=[search_s, its];
        end
end


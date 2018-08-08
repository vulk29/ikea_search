function [run] = main()
% STYPE = 3 -> full network
% STYPE = 4 -> SW network fixed k and betas 
% CTYPE = 1 then axelrod else immitation
% LStype =1 then LF else regular 
% FORSIGHT >1 then agent can only "see"at most nn=FORSIGHT agents in their
% network. else they can see all other agents in their network
 iterations=100;
 Nruns1=100;  
 Nruns2=500;
 MN=20;
 agentsnumber=100;  
 ORGON=1;
 STYPE=4;
 FORSIGHT=9;
 k=6;
 ECON=10;
 MWTYPE=1:1; 
 CTYPE=2:2; 
 LSTYPE=1:1; 
 shocktime=0;
 CONFORMITY=0;
 
if MN~=20&&(k~=0||k~=6) fprintf('cool, but please first generate landscape for N=%s and K=%s',num2str(MN), num2str(k));
return;
end

parfor jj=1:1000    %   Detailed explanation goes here
    ii=jj; 
    rng(ii,'twister');
    if k==6 
       filename=strcat('/gpfs/gss1/work/6F20', int2str(ii));
 
    end
    if k==0 
        filename=strcat('/gpfs/gss1/work/0F20', int2str(ii));
    end
    if k==19
        filename=strcat('/gpfs/gss1/work/19F20', int2str(ii));
    end

    F= load (filename);
    run(jj).it=[];
    run(jj).search_s=[];
    run(jj).k=k;
    run(jj).n=MN;
    run(jj).network=STYPE;
    run(jj).MWnetwork=MWTYPE;
    run(jj).locals=LSTYPE;
    run(jj).social_l=CTYPE;
    run(jj).size_n=FORSIGHT;
    run(jj).econ=ECON;
    run(jj).max=max(F.x);
    run(jj).conf=CONFORMITY;
    if shocktime==0
    [run(jj).it, run(jj).search_s]= simulation_engine(iterations, k, MN, agentsnumber, ORGON, STYPE, MWTYPE, CTYPE, LSTYPE,FORSIGHT, ECON, F, CONFORMITY);
    else 
        [run(jj).it, run(jj).search_s]= simulation_engineshocked(iterations, k, MN, agentsnumber, ORGON, STYPE, MWTYPE, CTYPE, LSTYPE, FORSIGHT, ECON, F, shocktime);
    end
end


end



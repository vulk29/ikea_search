 function [] = main_main()
 iterations=50;
 Nruns1=100;  
 Nruns2=500;
 MN=20;
 agentsnumber=100;
 ORGON=1;
 STYPE=3;
 FORSIGHT=0;
 for ECON=0:10:10
    for MWTYPE=3:3
        for CTYPE=2:2
           for LSTYPE=1:1
            %for FORSIGHT=8:1:10
                k=6;
                main(iterations, Nruns1,  Nruns2, k, MN, agentsnumber, ORGON, STYPE, MWTYPE, CTYPE, LSTYPE, FORSIGHT, ECON)
                filename=strcat('50local_com', int2str(MWTYPE));
                filename=strcat(filename, int2str(CTYPE));
                filename=strcat(filename, int2str(LSTYPE));
                filename=strcat(filename, int2str(STYPE));
                filename=strcat(filename, int2str(FORSIGHT));
                filename=strcat(filename, int2str(ECON));
                filename=strcat(filename, 'k');
                filename=strcat(filename, int2str(k));
                save (filename, 'ans');
  %              k=6;
  %              main(iterations, Nruns, k, MN, agentsnumber, ORGON, STYPE, MWTYPE, CTYPE, LSTYPE, FORSIGHT, ECON)
  %              filename=strcat('\partialrez\econ\', int2str(MWTYPE));
  %              filename=strcat(filename, int2str(CTYPE));
  %              filename=strcat(filename, int2str(LSTYPE));
  %              filename=strcat(filename, int2str(FORSIGHT));
  %              filename=strcat(filename, int2str(ECON));
  %              filename=strcat(filename, 'k');
  %              filename=strcat(filename, int2str(k));
  %              save (filename, 'ans');
  %           end
        end
    end
end

% STYPE=4;
% for ECON=10:10:100
% for MWTYPE=1:8
%     for CTYPE=1:2
%         for LSTYPE=1:2
%             for FORSIGHT=0:2:2
%                 k=1;
%                 main(iterations, Nruns, k, MN, agentsnumber, ORGON, STYPE, MWTYPE, CTYPE, LSTYPE, FORSIGHT, ECON)
%                               
%                 filename=strcat('C:\Users\AU289559\Documents\MATLAB\science\partialrez\mw\econ\', int2str(MWTYPE));
%                 filename=strcat(filename, '\');
%                 filename=strcat(filename, int2str(CTYPE));
%                 filename=strcat(filename, int2str(LSTYPE));
%                 filename=strcat(filename, int2str(FORSIGHT));
%                 filename=strcat(filename, int2str(ECON));
%                 filename=strcat(filename, 'k');
%                 filename=strcat(filename, int2str(k));
%                 save (filename, 'ans');
%                 k=6;
%                 main(iterations, Nruns, k, MN, agentsnumber, ORGON, STYPE, MWTYPE, CTYPE, LSTYPE, FORSIGHT, ECON)
%                               
%                 filename=strcat('C:\Users\AU289559\Documents\MATLAB\science\partialrez\mw\econ\', int2str(MWTYPE));
%                 filename=strcat(filename, '\');
%                 filename=strcat(filename, int2str(CTYPE));
%                 filename=strcat(filename, int2str(LSTYPE));
%                 filename=strcat(filename, int2str(FORSIGHT));
%                 filename=strcat(filename, int2str(ECON));
%                 filename=strcat(filename, 'k');
%                 filename=strcat(filename, int2str(k));
%                 save (filename, 'ans');
%             end
%         end
%     end
% end
% end

end
end

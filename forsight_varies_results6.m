function [ bl, blu ] = proc_results(kk, type)
bl=[];
STYPE=3;
for ECON=10:10:10
    for MWTYPE=2:2
        for CTYPE=2:2
           for LSTYPE=2:2
            for FORSIGHT=10:10:10
                k=kk;
                %filename=strcat('C:\Users\AU289559\Desktop\abacus  sim\partialrez\benchmark\0\partialrez%5Cecon%5C', int2str(MWTYPE));
               filename=strcat('C:\Users\AU289559\Desktop\abacus  sim\partialrez\benchmark\6\5to10partialrez%5Cecon%5C', int2str(MWTYPE));               
                filename=strcat(filename, int2str(CTYPE));
                filename=strcat(filename, int2str(LSTYPE));
                filename=strcat(filename, int2str(STYPE));
                filename=strcat(filename, int2str(FORSIGHT));
                filename=strcat(filename, int2str(ECON));
                filename=strcat(filename, 'k');
                filename=strcat(filename, int2str(k));
                
                
                benchmark6lf1=load (filename, 'ans');
            end 
           end
        end
    end
end

% STYPE=3;
% for ECON=0:10:100
%     MWTYPE=0;
%     for CTYPE=1:2
%         for LSTYPE=1:2
%             for FORSIGHT=0:2:2
%                 k=1;
%                                              
%                 filename=strcat('C:\Users\AU289559\Documents\MATLAB\science\partialrez\econ\', int2str(MWTYPE));
%                 filename=strcat(filename, int2str(CTYPE));
%                 filename=strcat(filename, int2str(LSTYPE));
%                 filename=strcat(filename, int2str(FORSIGHT));
%                 filename=strcat(filename, int2str(ECON));
%                 filename=strcat(filename, 'k');
%                 filename=strcat(filename, int2str(k));
%                 load (filename, 'ans');
%                 rez=process_z(ans);
%                 i=size(bl,1)+1;
%                     bl(i,1)=ECON;
%                     bl(i,2)=MWTYPE;
%                     bl(i,3)=CTYPE;
%                     bl(i,4)=LSTYPE;
%                     bl(i,5)=FORSIGHT;
%                     bl(i,6)=k;
%                     bl(i,7)=rez.sum;
%                     bl(i,8)=rez.average;
%                     bl(i,9)=rez.max;
%                     
%                     k=6;
%                                              
%                 filename=strcat('C:\Users\AU289559\Documents\MATLAB\science\partialrez\econ\', int2str(MWTYPE));
%                 filename=strcat(filename, int2str(CTYPE));
%                 filename=strcat(filename, int2str(LSTYPE));
%                 filename=strcat(filename, int2str(FORSIGHT));
%                 filename=strcat(filename, int2str(ECON));
%                 filename=strcat(filename, 'k');
%                 filename=strcat(filename, int2str(k));
%                 load (filename, 'ans');
%                 rez=process_z(ans);
%                 i=size(bl,1)+1;
%                     bl(i,1)=ECON;
%                     bl(i,2)=MWTYPE;
%                     bl(i,3)=CTYPE;
%                     bl(i,4)=LSTYPE;
%                     bl(i,5)=FORSIGHT;
%                     bl(i,6)=k;
%                     bl(i,7)=rez.sum;
%                     bl(i,8)=rez.average;
%                     bl(i,9)=rez.max;
%                     
%             end
%         end
%     end
% end


STYPE=type;
FORSIGHT=0; 

for ECON=10:10:10
    ECON=0;
    for MWTYPE=1:3
        for CTYPE=2:2
           for LSTYPE=1:1
            %for FORSIGHT=1:1:10
                %k=6;
                %filename=strcat('C:\Users\AU289559\Desktop\abacus  sim\partialrez\econs\econ%5C', int2str(MWTYPE));
                k=kk;
               % filename=strcat('C:\Users\AU289559\Desktop\abacus  sim\partialrez\forsight\forsight0\econ', int2str(MWTYPE));
               % filename=strcat('C:\Users\AU289559\Desktop\abacus  sim\partialrez\forsight\forsight6\econ%5C', int2str(MWTYPE));
               % filename=strcat('C:\Users\AU289559\Desktop\abacus  sim\partialrez\forsight\5to10partialrez%5Cecon%5C', int2str(MWTYPE));
               % filename=strcat('C:\Users\AU289559\Desktop\abacus  sim\50local_com', int2str(MWTYPE));
               filename=strcat('C:\Users\AU289559\Desktop\abacus  sim\100\%5Cfixednetwork%5C', int2str(MWTYPE));
              % filename=strcat('C:\Users\AU289559\Desktop\abacus  sim\100\', int2str(MWTYPE));
               filename=strcat(filename, int2str(CTYPE));
                filename=strcat(filename, int2str(LSTYPE));
                filename=strcat(filename, int2str(STYPE));
                filename=strcat(filename, int2str(FORSIGHT));
                filename=strcat(filename, int2str(ECON));
                filename=strcat(filename, 'k');
                filename=strcat(filename, int2str(k));
               
                bi=load (filename, 'ans');
                rez=process_z(bi.ans, benchmark6lf1.ans);
                i=size(bl,1)+1;
                    bl(i,1)=ECON;
                    bl(i,2)=MWTYPE;
                    bl(i,3)=CTYPE;
                    bl(i,4)=LSTYPE;
                    bl(i,5)=FORSIGHT;
                    bl(i,6)=k;
                    bl(i,7)=rez.sum;
                    bl(i,8)=rez.average;
                    bl(i,9)=mean(rez.max);
                    bl(i,10)=mean(rez.ls(:, 1));
                    bl(i,11)=rez.basins;
                    for j=1:100
                        blu(i,:).maxcol(j)=mean(rez.maxcollect(:, j));
                        blu(i,:).avg(j)=mean(rez.averag(:, j));
                        blu(i,:).diversity=rez.diversity;
                    end
                    
                    bl(i,12)=rez.speed;
                    bl(i, 13)=mean(rez.diversity);
                    
%                 k=6;
%                 filename=strcat('C:\Users\AU289559\Desktop\abacus  sim\partialrez\partialrez%5Cecon%5C', int2str(MWTYPE));
%                 filename=strcat(filename, '\');
%                 filename=strcat(filename, int2str(CTYPE));
%                 filename=strcat(filename, int2str(LSTYPE));
%                 filename=strcat(filename, int2str(FORSIGHT));
%                 filename=strcat(filename, int2str(ECON));
%                 filename=strcat(filename, 'k');
%                 filename=strcat(filename, int2str(k));
%                 load (filename, 'ans');
%                 rez=process_z(ans);
%                 i=size(bl,1)+1;
%                     bl(i,1)=ECON;
%                     bl(i,2)=MWTYPE;
%                     bl(i,3)=CTYPE;
%                     bl(i,4)=LSTYPE;
%                     bl(i,5)=FORSIGHT;
%                     bl(i,6)=k;
%                     bl(i,7)=rez.sum;
%                     bl(i,8)=rez.average;
%                     bl(i,9)=rez.max;
% 
%                     
            end
        end
    end
    end
end
% X1=bl([1:10], 5);
% Y2=bl([1:10], 7); 
% function createfigure(X1, Y1)
% %CREATEFIGURE(X1, Y1)
% %  X1:  vector of x data
% %  Y1:  vector of y data
% 
% %  Auto-generated by MATLAB on 16-Aug-2017 12:22:35
% 
% % Create figure
% figure1 = figure;
% 
% % Create axes
% axes1 = axes('Parent',figure1);
% hold(axes1,'on');
% 
% % Create plot
% plot(X1,Y1);
% 
% % Create xlabel
% xlabel({'# of peers one is allowed to ''inspect'' before engaging in social learning ','k=6, full connected network'});
% 
% % Create ylabel
% ylabel({'Average # of times max is reached'});
% 
% % Create title
% title({'Parameter sweep for number of peers one checks from one''s network looking for an improved solution'});
% 
% box(axes1,'on');

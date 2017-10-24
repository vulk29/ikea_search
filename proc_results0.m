function [ bl, blu ] = proc_results(param)
bl=[]; 
STYPE=3;
for ECON=10:10:10
    for MWTYPE=2:2
        for CTYPE=2:2
           for LSTYPE=2:2
            for FORSIGHT=10:10:10

k=0;
filename=strcat('C:\Users\AU289559\Desktop\abacus  sim\partialrez\benchmark\0\partialrez%5Cecon%5C', int2str(MWTYPE));
       
filename=strcat(filename, int2str(CTYPE));
                filename=strcat(filename, int2str(LSTYPE));
                filename=strcat(filename, int2str(STYPE));
                filename=strcat(filename, int2str(FORSIGHT));
                filename=strcat(filename, int2str(ECON));
                filename=strcat(filename, 'k');
                filename=strcat(filename, int2str(k));
                
                
                benchmark0lf1=load (filename, 'ans');
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


STYPE=4;
for ECON=0:10:10
    for MWTYPE=1:2
        for CTYPE=1:2
           for LSTYPE=1:2
            for FORSIGHT=10:20:20
                k=0;
                filename=strcat('C:\Users\AU289559\Desktop\abacus  sim\partialrez\0\1to3\04to10partialrez%5Cecon%5C', int2str(MWTYPE));
                filename2=strcat('C:\Users\AU289559\Desktop\abacus  sim\partialrez\0\missing\04to10partialrez%5Cecon%5C', int2str(MWTYPE));
                filename3=strcat('C:\Users\AU289559\Desktop\abacus  sim\partialrez\0\4to10\04to10partialrez%5Cecon%5C', int2str(MWTYPE));% remaining
                
                filename=strcat(filename, int2str(CTYPE));
                filename=strcat(filename, int2str(LSTYPE));
                filename=strcat(filename, int2str(STYPE));
                filename=strcat(filename, int2str(FORSIGHT));
                filename=strcat(filename, int2str(ECON));
                filename=strcat(filename, 'k');
                filename=strcat(filename, int2str(k));
                
                filename2=strcat(filename2, int2str(CTYPE));
                filename2=strcat(filename2, int2str(LSTYPE));
                filename2=strcat(filename2, int2str(STYPE));
                filename2=strcat(filename2, int2str(FORSIGHT));
                filename2=strcat(filename2, int2str(ECON));
                filename2=strcat(filename2, 'k');
                filename2=strcat(filename2, int2str(k));
                
                filename3=strcat(filename3, int2str(CTYPE));
                filename3=strcat(filename3, int2str(LSTYPE));
                filename3=strcat(filename3, int2str(STYPE));
                filename3=strcat(filename3, int2str(FORSIGHT));
                filename3=strcat(filename3, int2str(ECON));
                filename3=strcat(filename3, 'k');
                filename3=strcat(filename3, int2str(k));
                
                bi=load (filename, 'ans');
                bi2=load (filename2, 'ans');
                bi3=load (filename3, 'ans');
                
                
                for i=1:size(bi2.ans,2)
                    bi3.ans(i)=bi2.ans(i); 
                end
                
                for i=1:size(bi.ans,2)
                    bi3.ans(i)=bi.ans(i);
                end
                
             
                               
                rez=process_z(bi3.ans, benchmark0lf1.ans);
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
                    bl(i,12)=rez.speed;
%                                      bl(i,11)=rez.basins;
                    for j=1:25
                        blu(i,:).maxcol(j)=mean(rez.maxcollect(:, j));
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

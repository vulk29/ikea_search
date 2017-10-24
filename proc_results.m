function [ bl ] = proc_results()
bl=[]; 
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
for MWTYPE=1:8
    for CTYPE=1:2
        for LSTYPE=1:2
            for FORSIGHT=0:2:2
                k=0;
                filename=strcat('C:\Users\AU289559\Documents\MATLAB\science\partialrez\mw\econ\', int2str(MWTYPE));
                filename=strcat(filename, '\');
                filename=strcat(filename, int2str(CTYPE));
                filename=strcat(filename, int2str(LSTYPE));
                filename=strcat(filename, int2str(FORSIGHT));
                filename=strcat(filename, int2str(ECON));
                filename=strcat(filename, 'k');
                filename=strcat(filename, int2str(k));
                load (filename, 'ans');
                rez=process_z(ans);
                i=size(bl,1)+1;
                    bl(i,1)=ECON;
                    bl(i,2)=MWTYPE;
                    bl(i,3)=CTYPE;
                    bl(i,4)=LSTYPE;
                    bl(i,5)=FORSIGHT;
                    bl(i,6)=k;
                    bl(i,7)=rez.sum;
                    bl(i,8)=rez.average;
                    bl(i,9)=rez.max;
                 
                k=6;
                filename=strcat('C:\Users\AU289559\Documents\MATLAB\science\partialrez\mw\econ\', int2str(MWTYPE));
                filename=strcat(filename, '\');
                filename=strcat(filename, int2str(CTYPE));
                filename=strcat(filename, int2str(LSTYPE));
                filename=strcat(filename, int2str(FORSIGHT));
                filename=strcat(filename, int2str(ECON));
                filename=strcat(filename, 'k');
                filename=strcat(filename, int2str(k));
                load (filename, 'ans');
                rez=process_z(ans);
                i=size(bl,1)+1;
                    bl(i,1)=ECON;
                    bl(i,2)=MWTYPE;
                    bl(i,3)=CTYPE;
                    bl(i,4)=LSTYPE;
                    bl(i,5)=FORSIGHT;
                    bl(i,6)=k;
                    bl(i,7)=rez.sum;
                    bl(i,8)=rez.average;
                    bl(i,9)=rez.max;
                
            end
        end
    end
    end
end

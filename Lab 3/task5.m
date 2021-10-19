% CGPA Calculator
close all
clear
clc

n=input('Number of subjects: ');
sub={};
cred=[];
for i=1:n
  fprintf('Name of subject %g: ',i);
  x=input(' ','s');
  sub=[sub x];
  fprintf('Number of credit for %s', sub{i});
  x=input(' ');
  cred=[cred x];  
end
marks=[];
for i=1:n
  fprintf('Mark for %s', sub{i});
  x=input(' ');
  marks=[marks x];
end  
gp=zeros(1,n);
grades={};
for i=1:n
    if marks(i)>=80;
      gp(i)=4.00;
      grades=[grades 'A+'];
    elseif marks(i)>=75;
      gp(i)=3.75;
      grades=[grades 'A'];
    elseif marks(i)>=70;
      gp(i)=3.50;
      grades=[grades 'A-'];
    elseif marks(i)>=65;
      gp(i)=3.25;
      grades=[grades 'B+'];
    elseif marks(i)>=60;
      gp(i)=3.00;
      grades=[grades 'B'];
    elseif marks(i)>=55;
      gp(i)=2.75;
      grades=[grades 'B-'];
    elseif marks(i)>=50;
      gp(i)=2.50;
      grades=[grades 'C+'];
    elseif marks(i)>=45;
      gp(i)=2.25;
      grades=[grades 'C'];
    elseif marks(i)>=40;
      gp(i)=2.00;
      grades=[grades 'D'];
    else
      gp(i)=0.00;
      grades=[grades 'F'];
    end
end  
total_cred=sum(cred); 
total_cgp=sum(gp.*cred);
cgpa=total_cgp/total_cred;

fprintf('CGPA is %g\n', cgpa);

fprintf('    Subject          Credit        Mark        Grade          Gradepoint\n');
for i=1:n
    fprintf('%10s%10g%10g%10s%15g\n',sub{i}, cred(i),marks(i),grades{i},gp(i));
end
  
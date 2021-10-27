# NEUB CSE 432 Fall 2021 Lab 3
Find all Codes at  [Lab 3](https://github.com/shparvez001/NEUB-CSE-432-Fall-2021/tree/main/Lab%203).
## Task 1
Plotting a Sine Graph
```matlab
close all
clear
clc

fs=20; %Sampling at 20Hz
a=1;
f=1;  %Linear Frequency
w=2*pi*f; %Angular frequency
theta=pi/2;
t=0:1/fs:2*pi;
y=a*sin(w*t+theta);

figure;
plot(t,y);
figure;
stem(t,y);
```

## Task 2
Plotting a cosine graph
```matlab
close all
clear
clc

fs=20; %Sampling at 20Hz
a=5;
f=1;  %Linear Frequency
w=2*pi*f; %Angular frequency
theta=0;
t=0:1/fs:2*pi;
y=a*cos(w*t+theta);

figure;
plot(t,y);
figure;
stem(t,y);
```

## Task 3
Observing effect of sampling frequency
```matlab
close all
clear
clc

fs=20;
a=1;
f=5;  %Linear Frequency
w=2*pi*f; %Angular frequency
theta=pi/2;
for i=0:5
   fs=fs-4;
   t=0:1/fs:2;
   y=a*sin(w*t+theta);
   figure;
   plot(t,y);
end
```

## Task 4
String input output. Adding a variable in an array.
```matlab
close all
clear
clc

var={};
n=input('No of inputs: ');
for i=1:n
  x=input('Enter a string: ', 's');
  var=[var x];
end

for i=1:n
  printf('%s\n', var{i});
end  
```

## Task 5
Create a Matlab Script to find the cgpa of n subjects, where n will be taken as input. All the Name of subject, credits will be taken as input first and stored in an array. Afterward all the marks will be taken as input and the grade of each subject with final CGPA will be shown at last.
```matlab
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
  
```

## Tasks to be done by students
1. Create a Matlab Script to find CGPA of n students, where n will be taken as input. Then take the name of student and marks obtained in individual subjects.
	
	Finally show the students result in a table and print the students CGPA.
	
	Subjects and credits will be stored in an array. Subjects and credits will be the ones that you have in this semester.


	Sample input
	````
	Number of students =1
	Name of  Studnet 1: XYZ
	Marks in Bangla for XYZ: 75
	Marks in English for XYZ: 65
	Marks in Maths for XYZ: 55
	````
	Sample Output 
	````
	Students name: XYZ
	   Subject    Credit      Mark     Grade     Gradepoint
		Bangla         3        75         A           3.75
		English         3        65        B+           3.25
		 Maths         5        55        B-           2.75

	CGPA is 3.15909
	````
%% Exercise Set 2.1 Problem 9 section b.
% Author: Golnoosh Morshedi
% Numerical Analysis by R.L. Burden
% 9th Edition Page 55
% f(x)= (e^x)-2 & g(x)= cos((e^x)-2)
% Interval [0.5,1.5] finding aproximation point when f(x)=g(x)
% Error bound <0.00001
%-------------------------------------------------------------------------
clear
clc
%% Sketch of Both Graphs
x=-1:0.2:2;

f=@(x) exp(x)-2;
g=@(x) cos(exp(x)-2);

fplot(f,[-1,2],'b')
grid on
grid minor
k1=gtext('f(x)=e^x-2');
set(k1,'Color','b');
hold on
fplot(g,[-1,2],'r')
k2=gtext('g(x)=cos(e^x-2)');
set(k2,'Color','r');
title('Finding Intersections of Functions')
xlabel('Input Values (x)')
ylabel('Ouput Values (y)')

%% Finding Intersection Point
x_lower=0.5;
x_upper=1.5;
x_mid=x_lower+((x_upper-x_lower)/2);
N=0.00001;
while abs(f(x_mid)-g(x_mid))>N
    if f(x_mid)>g(x_mid)
        x_upper=x_mid;
    else
        x_lower=x_mid;
    end  
    x_mid=x_lower+((x_upper-x_lower)/2);
end

fprintf('The Intersection point is: %g\n',x_mid)
    

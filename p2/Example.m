%%% Clear the workspace and command window
clc;
clear;

%%% input index
n=1:10;

%%% an input sequence:
x =[-3 -4 2 0 1 4 3 6 3 7];

%%% input scalar values
a1 = 5j;
b1 = 10j;

%%% Implementation of a system property test for System 1
w1 = b1.*(a1+System_Ex(x));
y1 = a1 + (b1.*System_Ex(x));

%%% Display the result for System 1
%%% Just use the samples after the delay of 2 steps to compare
[ S1 ] = EqorNot(w1(3:end),y1(3:end),1,a1,b1);
disp(S1);

%%% input scalar values
a2 = 5j;
b2 = 1;

%%% Implementation of a system property test for System 1
w2 = b2.*(a2+System_Ex(x));
y2 = a2 + (b2.*System_Ex(x));

%%% Display the result for System 1
%%% Just use the samples after the delay of 2 steps to compare
[ S2 ] = EqorNot(w2(3:end),y2(3:end),1,a2,b2);
disp(S2);


%% Author: Berk Saltuk Yılmaz
%%% Code for testing time invariance
clc;
clear;

n0 = -50:50; % Delay gets the values from -50 to 50
%%% Test sequence #1
fprintf("-------------------- TESTS WITH INPUT #1 ---------------------\n");
x = [-3 -4 2 0 1 4 3 6 3 7];
x_extended(1:50) = zeros(1,50);
x_extended(51:60) = x;
x_extended(61:110) = zeros(1,50);
x = x_extended;
n = 1:110;
fprintf("---------------------- Test for System a: ------------------------\n");
%Test for a
for ind = n0
   if(ind ~= 0)
    y_a = system_a(x, n);
    if(ind>0)
        x_delayed = zeros(1, length(x));
        x_delayed(ind+1:length(x)) = x(1:length(x)-ind);

        y_a_delayed = zeros(1, length(y_a));
        y_a_delayed(ind+1: length(y_a)) = y_a(1:length(y_a)-ind);
    else
        x_delayed = zeros(1,length(x));
        x_delayed(1:length(x)+ ind) = x(-ind+1:length(x));

        y_a_delayed = zeros(1, length(y_a));
        y_a_delayed(1:length(y_a) + ind) = y_a(-ind+1:length(y_a));
    end
    w_a = system_a(x_delayed, n);
    if(isequal(w_a,y_a_delayed))
        fprintf('System a passes time invariance test for n0= %d\n' ,ind);
    else
        fprintf('System a does not pass time invariance test for n0= %d\n', ind);
    end
   end
end
fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System b: ------------------------\n");
% Test for b
for ind = n0
   if(ind ~= 0)
    y_b = system_b(x, 110);
    if(ind>0)
        x_delayed = zeros(1, length(x));
        x_delayed(ind+1:length(x)) = x(1:length(x)-ind);

        y_b_delayed = zeros(1, length(y_b));
        y_b_delayed(ind+1: length(y_b)) = y_b(1:length(y_b)-ind);
    else
        x_delayed = zeros(1,length(x));
        x_delayed(1:length(x)+ ind) = x(-ind+1:length(x));
        y_b_delayed = zeros(1, length(y_b));
        y_b_delayed(1:length(y_b) + ind) = y_b(-ind+1:length(y_b));
    end
    w_b = system_b(x_delayed, 110);
    if(isequal(w_b,y_b_delayed))
        fprintf('System b passes time invariance test for n0= %d\n' ,ind);
    else
        fprintf('System b does not pass time invariance test for n0= %d\n', ind);
    end
   end
end
fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System c: ------------------------\n");
% Test for c
for ind = n0
   if(ind ~= 0)
    y_c = system_c(x);
    if(ind>0)
        x_delayed = zeros(1, length(x));
        x_delayed(ind+1:length(x)) = x(1:length(x)-ind);

        y_c_delayed = 5.*ones(1, length(y_c));
        y_c_delayed(ind+1: length(y_c)) = y_c(1:length(y_c)-ind);
    else
        x_delayed = zeros(1,length(x));
        x_delayed(1:length(x)+ ind) = x(-ind+1:length(x));
        y_c_delayed = 5.*ones(1, length(y_c));
        y_c_delayed(1:length(y_c) + ind) = y_c(-ind+1:length(y_c));
    end
    w_c = system_c(x_delayed);
    if(isequal(w_c,y_c_delayed))
        fprintf('System c passes time invariance test for n0= %d\n' ,ind);
    else
        fprintf('System c does not pass time invariance test for n0= %d\n', ind);
    end
   end
end
fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System d: ------------------------\n");
% Test for d
for ind = n0
   if(ind ~= 0)
    y_d = system_d(x);
    if(ind>0)
        x_delayed = zeros(1, length(x));
        x_delayed(ind+1:length(x)) = x(1:length(x)-ind);

        y_d_delayed = zeros(1, length(y_d));
        y_d_delayed(ind+1: length(y_d)) = y_d(1:length(y_d)-ind);
    else
        x_delayed = zeros(1,length(x));
        x_delayed(1:length(x)+ ind) = x(-ind+1:length(x));
        y_d_delayed = zeros(1, length(y_d));
        y_d_delayed(1:length(y_d) + ind) = y_d(-ind+1:length(y_d));
    end
    w_d = system_d(x_delayed);
    if(isequal(w_d,y_d_delayed))
        fprintf('System d passes time invariance test for n0= %d\n' ,ind);
    else
        fprintf('System d does not pass time invariance test for n0= %d\n', ind);
    end
   end
end
fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System e: ------------------------\n");
% Test for e
for ind = n0
   if(ind ~= 0)
    y_e = system_e(x, n);
    if(ind>0)
        x_delayed = zeros(1, length(x));
        x_delayed(ind+1:length(x)) = x(1:length(x)-ind);

        y_e_delayed = zeros(1, length(y_e));
        y_e_delayed(ind+1: length(y_e)) = y_e(1:length(y_e)-ind);
    else
        x_delayed = zeros(1,length(x));
        x_delayed(1:length(x)+ ind) = x(-ind+1:length(x));
        y_e_delayed = y_e(end-1).*ones(1, length(y_e));
        y_e_delayed(1:length(y_e) + ind) = y_e(-ind+1:length(y_e));
    end
    w_e = system_e(x_delayed, n);
    if(isequal(w_e,y_e_delayed))
        fprintf('System e passes time invariance test for n0= %d\n' ,ind);
    else
        fprintf('System e does not pass time invariance test for n0= %d\n', ind);
    end
   end
end
fprintf("------------------------------------------------------------------\n");

fprintf("-------------------- TESTS WITH INPUT #2 ---------------------\n");
%%% Test sequence #2
x = [5 -11 9 2 3 -6 0 -7 3 10];
x_extended(1:50) = zeros(1,50);
x_extended(51:60) = x;
x_extended(61:110) = zeros(1,50);
x = x_extended;
fprintf("---------------------- Test for System a: ------------------------\n");
for ind = n0
   if(ind ~= 0)
    y_a = system_a(x, n);
    if(ind>0)
        x_delayed = zeros(1, length(x));
        x_delayed(ind+1:length(x)) = x(1:length(x)-ind);

        y_a_delayed = zeros(1, length(y_a));
        y_a_delayed(ind+1: length(y_a)) = y_a(1:length(y_a)-ind);
    else
        x_delayed = zeros(1,length(x));
        x_delayed(1:length(x)+ ind) = x(-ind+1:length(x));
        y_a_delayed = zeros(1, length(y_a));
        y_a_delayed(1:length(y_a) + ind) = y_a(-ind+1:length(y_a));
    end
    w_a = system_a(x_delayed, n);
    if(isequal(w_a,y_a_delayed))
        fprintf('System a passes time invariance test for n0= %d\n' ,ind);
    else
        fprintf('System a does not pass time invariance test for n0= %d\n', ind);
    end
   end
end
fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System b: ------------------------\n");
for ind = n0
   if(ind ~= 0)
    y_b = system_b(x, 110);
    if(ind>0)
        x_delayed = zeros(1, length(x));
        x_delayed(ind+1:length(x)) = x(1:length(x)-ind);

        y_b_delayed = zeros(1, length(y_b));
        y_b_delayed(ind+1: length(y_b)) = y_b(1:length(y_b)-ind);
    else
        x_delayed = zeros(1,length(x));
        x_delayed(1:length(x)+ ind) = x(-ind+1:length(x));
        y_b_delayed = zeros(1, length(y_b));
        y_b_delayed(1:length(y_b) + ind) = y_b(-ind+1:length(y_b));
    end
    w_b = system_b(x_delayed, 110);
    if(isequal(w_b,y_b_delayed))
        fprintf('System b passes time invariance test for n0= %d\n' ,ind);
    else
        fprintf('System b does not pass time invariance test for n0= %d\n', ind);
    end
   end
end
fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System c: ------------------------\n");
for ind = n0
   if(ind ~= 0)
    y_c = system_c(x);
    if(ind>0)
        x_delayed = zeros(1, length(x));
        x_delayed(ind+1:length(x)) = x(1:length(x)-ind);

        y_c_delayed = 5.*ones(1, length(y_c));
        y_c_delayed(ind+1: length(y_c)) = y_c(1:length(y_c)-ind);
    else
        x_delayed = zeros(1,length(x));
        x_delayed(1:length(x)+ ind) = x(-ind+1:length(x));
        y_c_delayed = 5.*ones(1, length(y_c));
        y_c_delayed(1:length(y_c) + ind) = y_c(-ind+1:length(y_c));
    end
    w_c = system_c(x_delayed);
    if(isequal(w_c,y_c_delayed))
        fprintf('System c passes time invariance test for n0= %d\n' ,ind);
    else
        fprintf('System c does not pass time invariance test for n0= %d\n', ind);
    end
   end
end
fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System d: ------------------------\n");
for ind = n0
   if(ind ~= 0)
    y_d = system_d(x);
    if(ind>0)
        x_delayed = zeros(1, length(x));
        x_delayed(ind+1:length(x)) = x(1:length(x)-ind);

        y_d_delayed = zeros(1, length(y_d));
        y_d_delayed(ind+1: length(y_d)) = y_d(1:length(y_d)-ind);
    else
        x_delayed = zeros(1,length(x));
        x_delayed(1:length(x)+ ind) = x(-ind+1:length(x));
        y_d_delayed = zeros(1, length(y_d));
        y_d_delayed(1:length(y_d) + ind) = y_d(-ind+1:length(y_d));
    end
    w_d = system_d(x_delayed);
    if(isequal(w_d,y_d_delayed))
        fprintf('System d passes time invariance test for n0= %d\n' ,ind);
    else
        fprintf('System d does not pass time invariance test for n0= %d\n', ind);
    end
   end
end
fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System e: ------------------------\n");
for ind = n0
   if(ind ~= 0)
    y_e = system_e(x, n);
    if(ind>0)
        x_delayed = zeros(1, length(x));
        x_delayed(ind+1:length(x)) = x(1:length(x)-ind);

        y_e_delayed = zeros(1, length(y_e));
        y_e_delayed(ind+1: length(y_e)) = y_e(1:length(y_e)-ind);
    else
        x_delayed = zeros(1,length(x));
        x_delayed(1:length(x)+ ind) = x(-ind+1:length(x));
        y_e_delayed = y_e(end-1).*ones(1, length(y_e));
        y_e_delayed(1:length(y_e) + ind) = y_e(-ind+1:length(y_e));
    end
    w_e = system_e(x_delayed, n);
    if(isequal(w_e,y_e_delayed))
        fprintf('System e passes time invariance test for n0= %d\n' ,ind);
    else
        fprintf('System e does not pass time invariance test for n0= %d\n', ind);
    end
   end
end
%% Author: Berk Saltuk Yılmaz
%%% Code for testing causality
clc;
clear;

%%% Input index is same with the example test
n=1:9;

x = [-3 -4 2 0 1 4 3 6 3 7];
z = x;
z1 = z;
z2 = z;
fprintf("---------------------- Test for System a: ------------------------\n");
for ind = n
    z2(1:ind) = z(1:ind);
    z2(ind+1:end) = zeros(1, length(z2)-ind);

    w_a = system_a(z1,10);
    y_a = system_a(z2, 10);
    if(w_a(ind) == y_a(ind))
        disp("System a passes causality test for index " + ind);
    else
        disp("System a does not pass causality test for index " + ind);
    end
end

fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System b: ------------------------\n");
z1 = z;
z2 = z;
for ind = n
    z2(1:ind) = z(1:ind);
    z2(ind+1:end) = zeros(1, length(z2)-ind);

    w_b = system_b(z1,10);
    y_b = system_b(z2, 10);
    if(w_b(ind) == y_b(ind))
        disp("System b passes causality test for index " + ind);
    else
        disp("System b does not pass causality test for index " + ind);
    end
end

fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System c: ------------------------\n");
z1 = z;
z2 = z;
for ind = n
    z2(1:ind) = z(1:ind);
    z2(ind+1:end) = zeros(1, length(z2)-ind);

    w_c = system_c(z1);
    y_c = system_c(z2);
    if(w_c(ind) == y_c(ind))
        disp("System c passes causality test for index " + ind);
    else
        disp("System c does not pass causality test for index " + ind);
    end
end
fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System d: ------------------------\n");
z1 = z;
z2 = z;
for ind = n
    z2(1:ind) = z(1:ind);
    z2(ind+1:end) = zeros(1, length(z2)-ind);

    w_d = system_d(z1);
    y_d = system_d(z2);
    if(w_d(ind) == y_d(ind))
        disp("System d passes causality test for index " + ind);
    else
        disp("System d does not pass causality test for index " + ind);
    end
end
fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System e: ------------------------\n");
z1 = z;
z2 = z;
for ind = n
    z2(1:ind) = z(1:ind);
    z2(ind+1:end) = zeros(1, length(z2)-ind);

    w_e = system_d(z1);
    y_e = system_d(z2);
    if(w_e(ind) == y_e(ind))
        disp("System e passes causality test for index " + ind);
    else
        disp("System e does not pass causality test for index " + ind);
    end
end
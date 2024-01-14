%% Author: Berk Saltuk Yılmaz
%%% Code for testing linearity
clc;
clear;

%%% Input index is same with the example test
n=1:10;

%%% Constants 
alpha = -5:5;
beta = -5:5;

fprintf("-------------------- TESTS WITH INPUT SET #1 ---------------------\n");

%%% Test first run
% Input set #1
x1 = [-3 -4 2 0 1 4 3 6 3 7];
x2 = [2 5 -1 7 -3 6 12 -9 8 -4];

fprintf("---------------------- Test for System a: ------------------------\n");

% Test for System a
for ind = alpha
    for jind = beta
        if( ind ~= 0 && jind ~= 0)
            y1_a = system_a(x1, n);
            y2_a = system_a(x2, n);
            w_a = ind.*y1_a + jind.*y2_a;
    
            x_a = ind.*x1 + jind.*x2;
            y_a = system_a(x_a, n);
            if(isequal(w_a,y_a))
                fprintf('System a passes linearity test for alpha= %d, and beta= %d\n', ind, jind);
            else
                fprintf('System a does not pass linearity test for alpha= %d, and beta= %d\n', ind, jind);
            end
        end
    end
end

fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System b: ------------------------\n");
% Test for System b
for ind = alpha
    for jind = beta
        if( ind ~= 0 && jind ~= 0)
        y1_b = system_b(x1, 10);
        y2_b = system_b(x2, 10);
        w_b = ind.*y1_b + jind.*y2_b;

        x_b = ind.*x1 + jind.*x2;
        y_b = system_b(x_b,10);
        if(isequal(w_b,y_b))
            fprintf('System b passes linearity test for alpha= %d, and beta= %d\n', ind, jind);
        else
            fprintf('System b does not pass linearity test for alpha= %d, and beta= %d\n', ind, jind);
        end
        end
    end
end

fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System c: ------------------------\n");
% Test for System c
for ind = alpha
    for jind = beta
        if( ind ~= 0 && jind ~= 0)
        y1_c = system_c(x1);
        y2_c = system_c(x2);
        w_c = ind.*y1_c + jind.*y2_c;

        x_c = ind.*x1 + jind.*x2;
        y_c = system_c(x_c);
        if(isequal(w_c,y_c))
            fprintf('System c passes linearity test for alpha= %d, and beta= %d\n', ind, jind);
        else
            fprintf('System c does not pass linearity test for alpha= %d, and beta= %d\n', ind, jind);
        end
        end
    end
end

fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System d: ------------------------\n");
% Test for System d
for ind = alpha
    for jind = beta
        if( ind ~= 0 && jind ~= 0)
        y1_d = system_d(x1);
        y2_d = system_d(x2);
        w_d = ind.*y1_d + jind.*y2_d;

        x_d = ind.*x1 + jind.*x2;
        y_d = system_d(x_d);
        if(isequal(w_d,y_d))
            fprintf('System d passes linearity test for alpha= %d, and beta= %d\n', ind, jind);
        else
            fprintf('System d does not pass linearity test for alpha= %d, and beta= %d\n', ind, jind);
        end
        end
    end
end

fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System e: ------------------------\n");
% Test for System e
for ind = alpha
    for jind = beta
        if( ind ~= 0 && jind ~= 0)
        y1_e = system_e(x1, n);
        y2_e = system_e(x2, n);
        w_e = ind.*y1_e + jind.*y2_e;

        x_e = ind.*x1 + jind.*x2;
        y_e = system_e(x_e, n);
        if(isequal(w_e,y_e))
            fprintf('System e passes linearity test for alpha= %d, and beta= %d\n', ind, jind);
        else
            fprintf('System e does not pass linearity test for alpha= %d, and beta= %d\n', ind, jind);
        end
        end
    end
end

fprintf("------------------------------------------------------------------\n");

fprintf("-------------------- TESTS WITH INPUT SET #2 ---------------------\n");
% Tests second run
% Input set #2
x1 =  [9 23 15 -10 18 14 5 -1 6 11]; 
x2 = [2 5 -1 7 -3 6 12 -9 8 -4];

fprintf("---------------------- Test for System a: ------------------------\n");

% Test for System a
for ind = alpha
    for jind = beta
        if( ind ~= 0 && jind ~= 0)
        y1_a = system_a(x1, n);
        y2_a = system_a(x2, n);
        w_a = ind.*y1_a + jind.*y2_a;

        x_a = ind.*x1 + jind.*x2;
        y_a = system_a(x_a, n);
        if(isequal(w_a,y_a))
            fprintf('System a passes linearity test for alpha= %d, and beta= %d\n', ind, jind);
        else
            fprintf('System a does not pass linearity test for alpha= %d, and beta= %d\n', ind, jind);
        end
        end
    end
end

fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System b: ------------------------\n");
% Test for System b
for ind = alpha
    for jind = beta
        if( ind ~= 0 && jind ~= 0)
        y1_b = system_b(x1, 10);
        y2_b = system_b(x2, 10);
        w_b = ind.*y1_b + jind.*y2_b;

        x_b = ind.*x1 + jind.*x2;
        y_b = system_b(x_b, 10);
        if(isequal(w_b,y_b))
            fprintf('System b passes linearity test for alpha= %d, and beta= %d\n', ind, jind);
        else
            fprintf('System b does not pass linearity test for alpha= %d, and beta= %d\n', ind, jind);
        end
        end
    end
end

fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System c: ------------------------\n");
% Test for System c
for ind = alpha
    for jind = beta
        if( ind ~= 0 && jind ~= 0)
        y1_c = system_c(x1);
        y2_c = system_c(x2);
        w_c = ind.*y1_c + jind.*y2_c;

        x_c = ind.*x1 + jind.*x2;
        y_c = system_c(x_c);
        if(isequal(w_c,y_c))
            fprintf('System c passes linearity test for alpha= %d, and beta= %d\n', ind, jind);
        else
            fprintf('System c does not pass linearity test for alpha= %d, and beta= %d\n', ind, jind);
        end
        end
    end
end

fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System d: ------------------------\n");
% Test for System d
for ind = alpha
    for jind = beta
        if( ind ~= 0 && jind ~= 0)
        y1_d = system_d(x1);
        y2_d = system_d(x2);
        w_d = ind.*y1_d + jind.*y2_d;

        x_d = ind.*x1 + jind.*x2;
        y_d = system_d(x_d);
        if(isequal(w_d,y_d))
            fprintf('System d passes linearity test for alpha= %d, and beta= %d\n', ind, jind);
        else
            fprintf('System d does not pass linearity test for alpha= %d, and beta= %d\n', ind, jind);
        end
        end
    end
end

fprintf("------------------------------------------------------------------\n");

fprintf("---------------------- Test for System e: ------------------------\n");
% Test for System e
for ind = alpha
    for jind = beta
        if( ind ~= 0 && jind ~= 0)
        y1_e = system_e(x1, n);
        y2_e = system_e(x2, n);
        w_e = ind.*y1_e + jind.*y2_e;

        x_e = ind.*x1 + jind.*x2;
        y_e = system_e(x_e, n);
        if(isequal(w_e,y_e))
            fprintf('System e passes linearity test for alpha= %d, and beta= %d\n', ind, jind);
        else
            fprintf('System e does not pass linearity test for alpha= %d, and beta= %d\n', ind, jind);
        end
        end
    end
end
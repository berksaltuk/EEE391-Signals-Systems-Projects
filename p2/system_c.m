%% Author: Berk Saltuk Yılmaz
%%% System c
function [ output_args ] = system_c( input_args)

%%% Get an input signal and advance it by 2 samples
output_args = input_args;
advance = 4;

output_args(1 : end-advance) = input_args(advance + 1: end);
output_args(end - advance + 1: end) = zeros(1, advance);

output_args = 3.*output_args + 5; %% Multiply the system with n

end
%% Author: Berk Saltuk Yılmaz
%%% System a

function [ output_args ] = system_a( input_args, mult )

%%% Get an input signal and advance it by 2 samples
output_args = input_args;
advance = 2;

output_args(1 : end-advance) = input_args(advance + 1: end);
output_args(end - advance + 1: end) = zeros(1, advance);

output_args = mult.*output_args; %% Multiply the system with n

end

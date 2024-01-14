%% Author: Berk Saltuk Yılmaz
%%% System b

function [ output_args ] = system_b( input_args, len)

output_args = input_args;

    output_args(1 : end/2) = input_args(2:2:end);
    output_args((end/2)+1:end) = zeros(1, len/2);

end

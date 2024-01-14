function [ output_args ] = System_Ex( input_args )

%%% Get an input signal and delay it by 2 samples
output_args = input_args;
delay = 2;

output_args(1:delay) = zeros(1,delay);
output_args(delay+1:end) = input_args(1:end-delay);

end


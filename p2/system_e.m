%% Author: Berk Saltuk Yılmaz
%%% System e
function [ output_args ] = system_e( input_args, n)

output_args = input_args;

sum = 0;
for index = n
    for inner = 1:index
        sum = sum + input_args(inner);
    end
    output_args(index) = sum;
    sum = 0;
end

end
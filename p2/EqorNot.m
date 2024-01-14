function [ S ] = EqorNot(input_args1, input_args2, index, a, b)

%%% Test both the outputs are same or not
if(isequal(input_args1,input_args2))

S1 = ['System ',num2str(index),' passes the property test for a = ',num2str(a),' and b = ',num2str(b)];
else
S1 = ['System ',num2str(index),' does not pass the property test for a = ',num2str(a),' and b = ',num2str(b)];   
end

S = S1;

end


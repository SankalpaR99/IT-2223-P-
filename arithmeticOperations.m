%function for input and multiple outputs

function [sum,sub,mul,div] = operations(x,y)
sum=x+y;
sub=x-y;
mul=x*y;
div=x/y;
end

%if type operations(20,10) only give the first operation (default)
%so have to type [sum,sub,mul,div]=operations(20,10)
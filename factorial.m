function fact = factorial(x)
if x==0 || x==1
    fact =1;
else
    fact=x*factorial(x-1);
end
end

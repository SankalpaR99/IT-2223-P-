x=input('Enter the number : ');
fact = 1;

for i = 1:x
    fact = fact * i;
end
disp(['Factorial: ', num2str(fact)]);
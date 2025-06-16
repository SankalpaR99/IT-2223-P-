x = input('Enter the number: ');

% Iterative method
tic
fact_iter = 1;
for i = 1:x
    fact_iter = fact_iter * i;
end
elapsed_iter = toc;

% Recursive method
tic
fact_rec = factorial_recursive(x); % <- You must call the function
elapsed_rec = toc;

% Display results using %g for large numbers
fprintf('Iterative Factorial of %d: %g\n', x, fact_iter);
fprintf('Time taken (Iterative): %.6f seconds\n', elapsed_iter);

fprintf('Recursive Factorial of %d: %g\n', x, fact_rec);
fprintf('Time taken (Recursive): %.6f seconds\n', elapsed_rec);

% Recursive function defined at the end of the script
function fact_rec = factorial_recursive(n)
    if n == 0 || n == 1
        fact_rec = 1;
    else
        fact_rec = n * factorial_recursive(n - 1);
    end
end
arr = [64,25,12,22,11];
n=length(arr);

for i = 1:n-1
    minIndex=i;
    for j=i+1:n
        if(arr(j)<arr(minIndex))
            minIndex=j;
        end
    end

    %%directly can't take the minimum value, If directly takes array only consider the newest value,deleted the previous vale
    %%so to store first value get a variable like temp
    
    temp=arr(i);
    arr(i)=arr(minIndex);
    arr(minIndex)=temp;
end

disp("Sorted Array:")
disp(arr);
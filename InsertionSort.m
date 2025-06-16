arr=[5,4,10,1,6,2];
n=length(arr);

for i=2:n
    key=arr(i);
    prevIndex=i-1;

    while  prevIndex>0 && arr(prevIndex) > key
        arr(prevIndex+1)=arr(prevIndex);
        prevIndex=prevIndex-1;

    end
    arr(prevIndex+1)=key;
end

disp("Sorted array:")
disp(arr);
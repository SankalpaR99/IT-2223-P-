function sortedArr = mergeSort(arr)
    if length(arr) <= 1
        sortedArr = arr;
        return;
    end
    
    mid = floor(length(arr) / 2);
    leftHalf = mergeSort(arr(1:mid));
    rightHalf = mergeSort(arr(mid+1:end));
    
    sortedArr = merge(leftHalf, rightHalf);
end

function mergedArr = merge(leftArr, rightArr)
    mergedArr = [];
    i = 1; j = 1;
    
    while i <= length(leftArr) && j <= length(rightArr)
        if leftArr(i) < rightArr(j)
            mergedArr = [mergedArr, leftArr(i)];
            i = i + 1;
        else
            mergedArr = [mergedArr, rightArr(j)];
            j = j + 1;
        end
    end
    
    mergedArr = [mergedArr, leftArr(i:end), rightArr(j:end)];
end

arr = [5, 4, 10, 1, 6, 2]; 
sortedArr = mergeSort(arr);
disp('Sorted array:');
disp(sortedArr);
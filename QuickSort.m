arr=[5,4,10,1,6,2];

function sortedArr=quickSort(arr)
if length(arr)<=1
    sortedArr=arr;
    return;
end

pivot=arr(1);
leftArr=arr(arr<pivot);
rightArr=arr(arr>pivot);

sortedArr=[quickSort(leftArr),pivot,quickSort(rightArr)];

end

sortedArr=quickSort(arr);
disp("sorted Array:")
disp(sortedArr);
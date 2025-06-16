a = [3, 6, 8, 12, 14, 17, 25, 29, 31, 36, 42, 47, 53, 55, 62];
target = 62;
startPoint = 1;
endPoint = length(a);
found = false;
tic;
while startPoint <= endPoint
    mid = floor((startPoint + endPoint) / 2);
    
    if a(mid) == target
        found = true;
        break;
    elseif target < a(mid)
        endPoint = mid - 1;
    else
        startPoint = mid + 1;
    end
end

if found
    fprintf("Element found\n");
else
    fprintf("Element not found\n");
end
toc;
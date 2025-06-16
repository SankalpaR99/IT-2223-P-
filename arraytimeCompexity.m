a=1:1000;
index=998;
found=false;
tic;
for i=1:length(a)
    if a(i)==index
        found=true;
        index=i;
        break;
    end
end

    if found
        fprintf('found at index:%d\n',index);
    else
        fprintf('not found!');
    end
toc;

startPoint = 1; 
endPoint = length(a); 

tic;

while startPoint <= endPoint
    mid = floor((startPoint + endPoint) / 2);
    
    if a(mid) == index
        fprintf('found at index:%d\n',index);
        break;
    elseif index < a(mid)
        endPoint = mid - 1;
    else
        startPoint = mid + 1;
    end
end

if startPoint>endPoint
     fprintf("Element not found\n");
end
toc;
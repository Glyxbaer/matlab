function delta = delta_index( A, B, i )
%DELTA_INDEX Summary of this function goes here
%   Detailed explanation goes here

    switch i
        
        case 1
            delta = getDiff1(A,B);
        case 2
            delta = getDiff2(A,B);
        case 3
            delta = getDiff3(A,B);
        case 4
            delta = getDiff4(A,B);
        case 5
            delta = getDiff5(A,B);
    end
    


end

function ret=getDiff1(A,B)
    Z = imabsdiff(A,B);
    ret = mean2(Z);
    
end

function ret=getDiff2(A,B)
    Z = imabsdiff(A,B);
    a = times(Z,Z);
    
    ret = sqrt(sum(sum(a)))/ numel(a);

end

function ret=getDiff3(A,B)
    
    n = imadd(A,B);
    z = imabsdiff(A,B);
    ret = sum(sum(times(z,z))) / sum(sum(times(n,n)));

end

function ret=getDiff4(A,B)

    n = A - mean2(A);
    z = imabsdiff(A,B);
    ret = sum(sum(times(z,z))) / sum(sum(times(n,n)));
    

end

function ret=getDiff5(A,B)
    
    ret = sum(sum(imabsdiff(A,B))) / mean2(A);
    
end

%{
Subroutine generate random list of 0-1
ni: sample size
ns: number of source
minD : density (minimum number of ones)
%}

%random_x = x(randperm(size(x, 1)), :); randomly shuffle rows

function ranList = randGen(ni,ns,minD)
pos = 1:ns;
ranList = [];
idx = minD;
while 1
    cN = combnk(pos, idx);
    r = randperm(randi(size(cN,1),1));
    if size(ranList,1) >= ni
        break
    elseif length(r) > ni || (length(r) + size(ranList,1) > ni)
        continue
    else
        for ri = r
            idxs = zeros(1,ns);
            disp(ri)
            idxs(cN(ri,:)) = 1;
            ranList = [ranList;idxs];
        end
    end
    idx = idx + 1;
end
end
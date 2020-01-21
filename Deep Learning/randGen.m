%{
Subroutine generate random list of 0-1
T: comosol simulation dataset transferred into matrix
ni: sample size
ns: number of source
minD : density (minimum number of ones)
%}

%random_x = x(randperm(size(x, 1)), :); randomly shuffle rows
%{
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
%}

% This algorithm works, but worse then the one above.
% This algorithm actually is pretty fast lmao
function ranField, ranList = randGen(T, ni,ns,minD)


ranField = [];
pos = 1:ns;
ranList = [];
for i = minD:ns
    cN = combnk(pos, i);
    for j = 1:size(cN,1)
        idxs = zeros(1,ns);
        idxs(cN(j,:)) = 1;
        ranList = [ranList;idxs];
    end
end

temp = ranList(randperm(size(ranList, 1)), :); % rand shuffle
if size(ranList,1) > ni
    ranList = temp(1:ni,:);
end
end
    

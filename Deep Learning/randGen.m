%{
ni: sample size
ns: number of source
d : density (minimum number of ones)
%}
function ranList = randGen(ni,ns,d)
pos = 1:ns;
ranList = [];
idx = 1;
while 1
    cN = combnk(pos, idx);
    r = randperm(randi(length(cN),1));
    for ri = r
        idx = zeros(1,ns);
        idx(cN(ri,:)) = 1;
        ranList = [ranList;idx];
    end
    idx = idx + 1;
end
end
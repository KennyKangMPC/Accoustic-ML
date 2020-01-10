%{
ni: sample size
ns: number of source
%}
function ranList = randGen(ni,ns)
pos = 1:ns;
ranList = [];
idx = 1;
while length(ranList) ~= ni
    cN = combnk(pos, idx);
    r = randperm(randi(length(cN),1));
    for ri = r
        idx = zeros(1,ns);
        disp(cN(ri,:))
        idx(cN(ri,:)) = 1;
        
        ranList = [ranList;idx];
        disp(ranList)
    end
    idx = idx + 1;
end
end
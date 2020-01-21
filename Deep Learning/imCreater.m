%{
This subroutine is used to produce images of sources and saves them to
a specific directory and can be later utlized for deep learning evaluation
parameters:
ops: binary array of sources location
x: source width
y: source height
d: distance between two sources
h: image size
%}
function isDone = imCreater(ops, x, y, d, h)
mkdir('./figs')
numDig = floor(log10(size(ops,1))+1);
format= ['%0' num2str(numDig) '.f'];
for k=1:size(ops,1)
    f = plot_Source(ops(k,:), x, y, d, h);
    %TODO: remember to change this 03 to some other numbers
    saveas(f,['./figs/' num2str(k, format) '.jpg'],'jpg')
end
isDone = 1;
end
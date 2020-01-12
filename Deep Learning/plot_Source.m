%{

parameters:
ops: array of this sources image
x: source width
y: source height
d: distance between two sources
h: image size

% Here the image parameters need to be modified
%}

function fig=plot_Source(im, x, y, d, h)

fig = figure('Position',[100,100,h,h],'visible','off');
set(fig,'PaperSize',[8 8],'PaperPosition',[0 0 8 8]);
clf(fig);
hold on;
for i = im(k,:)
    
    switch i
        case 0
            continue
        case 1
            rectangle('Position',[,x,y]) % first two positions are the left bottom corner position.
    end
    
end
hold off;
end
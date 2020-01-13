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
xl = h/20;
yl = 0;
for i = 1:size(im,2)
    yl = yl + (i-1) * d;
    switch im(i)
        case 0
            continue
        case 1
            rectangle('Position',[xl,yl,x,y], 'FaceColor', 'k');
    end
end
axis([0 h/10 0 300])
axis equal
axis off
hold off;
end
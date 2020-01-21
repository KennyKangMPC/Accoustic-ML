%{
This subroutine converts row table into matrix which has each row
corresponds to field of each source. Can also be represented by struct

T_arg: raw table of field arguments value
T_abs: raw table of field absolute value

return value:
T: after normalization, matrix form.

%}
function T = sepGroups(T_arg, T_abs)

% swap data type from cell to  matrix
abs = [];
arg = [];
for i = 1:size(T_arg,1)
    raw1 = T_abs(i,:);
    raw2 = T_arg(i,:);
    abs = vertcat(abs, [str2double(raw1{1}),str2double(raw1{2})]);
    arg = vertcat(arg, [str2double(raw2{1}),str2double(raw2{2})]);
end

% transfer to matrix. Each raw represents to a point
T = [];
group_abs = [];
group_phase = [];
thresh = 1E-10;
[raws,cols] = find(abs <= thresh);

for i = 1:length(raws)-1
    group_abs = vertcat(group_abs,abs(raws(i):raws(i+1)-1,2)');
    group_phase = vertcat(group_phase,arg(raws(i):raws(i+1)-1,2)');
end

end
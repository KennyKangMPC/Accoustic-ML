%{
This code is to generate random square source location and then plot
them. Here is the main routine
%}
close all
clear;
clc;

%% Read datafile and convert to cell type matrix
%TODO: Discover better data reading method
f_arg = input('absolute value file name: ','s');
T_arg = readtable(f_arg);
T_arg = table2array(T_arg(8:size(T_arg,1),:));

f_abs = input('argument value file name: ','s');
T_abs = readtable(f_abs);
T_abs = table2array(T_abs(8:size(T_abs,1),:));

T = sepGroups(T_arg, T_abs);

%% Declare parameter
x = input('source width: ');
y = input('source length: ');
d = input('distance between two sources: ');
h = input('image size: '); % default gives 500
ro = input('overlaps starting density: ');
n = input('number of source: ');
ni = input('sample size: ');
%% Generate list of random 0-1 (guarantee no repetitive)
field, randPool = randGen(T, ni, n, ro);
%% Plot and save images for later training
isDone = imCreater(randPool, x, y, d, h);
if isDone
    disp('Finish Producing images')
end
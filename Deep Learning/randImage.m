%{
This code is to generate random square source location and then plot
them. Here is the main routine
%}
close all
clear;
clc;

%% Read datafile
fn1 = input('file name: ','s');
T = readtable(fn);
T = table2array(T(8:size(T,1),:));

%% Declare parameter
x = input('source width: ');
y = input('source length: ');
d = input('distance between two sources: ');
h = input('image size: '); % default gives 500
ro = input('overlaps starting density: ');
n = input('number of source: ');
ni = input('sample size: ');
%% Generate list of random 0-1 (guarantee no repetitive)
randPool = randGen(ni, n, ro);
%% Plot and save images for later training
isDone = imCreater(randPool, x, y, d, h);
if isDone
    disp('Finish Producing images')
end
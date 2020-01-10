%{
This code is to generate random square source location and then plot
them.
%}
close all
clear;
clc;

%% Declare parameter
%x = input('source width: ');
%y = input('source length: ');
%d = input('distance between two sources: ');
n = input('number of source: ');
ni = input('sample size: ');

%% Generate list of random 0-1 (guarantee no repetitive)
randPool = randGen(ni, n);
%% Plot and save images for later training
%imCreater(randPool, x, y, d, h)
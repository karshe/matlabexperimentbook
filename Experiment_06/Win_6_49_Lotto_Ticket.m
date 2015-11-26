% In a typical 6/49 game, six numbers are drawn from a range of 49 and if 
% the six numbers on a ticket match the numbers drawn, 
% the ticket holder is a jackpot winner—this is true no matter in which 
% order the numbers appear. 
% Lets find out probability of winning jackpot.
clear all; clc
format long g
%% Jackpot win or Share of 79.5% of the Pool's Fund %%
n = 6;
chance_jackpot =  Factorial_Function(49) / (Factorial_Function(49-n) * Factorial_Function(n));

fprintf('CHANCES OF WINNING JACKPOT IS ONE IN %d \n', chance_jackpot);
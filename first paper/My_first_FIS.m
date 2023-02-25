clc;
clear;
close all;

%% Create FIS Structure


fisName='My First Fis';
fisType='mamdani';
andMethod='min';
orMethod='max';
impMethod='min';
aggMethod='max';
defuzzMethod='bisector';

fis=newfis(fisName,fisType,andMethod,orMethod,impMethod,aggMethod,defuzzMethod);

%% Add Variables

fis=addvar(fis,'input','Velocity',[0 140]);
fis=addmf(fis,'input',1,'LS','trapmf',[-inf -inf 30 50]);
fis=addmf(fis,'input',1,'MS','trapmf',[30 50 70 90]);
fis=addmf(fis,'input',1,'HS','trapmf',[70 90 inf inf]);

fis=addvar(fis,'input','Distance',[0 50]);
fis=addmf(fis,'input',2,'SD','trapmf',[-inf -inf 10 20]);
fis=addmf(fis,'input',2,'MD','trapmf',[10 20 30 40]);
fis=addmf(fis,'input',2,'LD','trapmf',[30 40 inf inf]);

fis=addvar(fis,'output','Acceleration',[-1 1]);
fis=addmf(fis,'output',1,'NB','trapmf',[-inf -inf -0.6 -0.2]);
fis=addmf(fis,'output',1,'NS','trimf',[-0.6 -0.2 0]);
fis=addmf(fis,'output',1,'ZR','trimf',[-0.2 0 0.2]);
fis=addmf(fis,'output',1,'PS','trimf',[0 0.2 0.6]);
fis=addmf(fis,'output',1,'PB','trapmf',[0.2 0.6 inf inf]);

%% Add Rules

Rules=[1 1 3 1 1
       1 2 4 1 1
       1 3 5 1 1
       2 1 2 1 1
       2 2 3 1 1
       2 3 4 1 1
       3 1 1 1 1
       3 2 2 1 1
       3 3 3 1 1];

fis=addrule(fis,Rules);
ruleview(fis)

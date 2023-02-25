clc;
clear;
close all;

%% Create FIS Structure

fisName='Mamdani FIS';
fisType='mamdani';
andMethod='min';
orMethod='max';
impMethod='min';
aggMethod='max';
defuzzMethod='centroid';

fis=newfis(fisName,fisType,andMethod,orMethod,impMethod,aggMethod,defuzzMethod);

%% Add Variables

%The first DM inputs (input 1)

fis=addvar(fis,'input','ZtoTFN_DM1',[-3.0550 3.0550]);
fis=addmf(fis,'input',1,'mf1','trimf',[-3.055, -3.055, -2.291]);
fis=addmf(fis,'input',1,'mf2','trimf',[-2.887, -2.887, -2.165]);
fis=addmf(fis,'input',1,'mf3','trimf',[-2.646, -2.646, -1.984]);
fis=addmf(fis,'input',1,'mf4','trimf',[-3.055, -2.291, -1.528]);
fis=addmf(fis,'input',1,'mf5','trimf',[-2.887, -2.165, -1.443]);
fis=addmf(fis,'input',1,'mf6','trimf',[2.236, -2.236, -1.677]);
fis=addmf(fis,'input',1,'mf7','trimf',[-2.646, -1.984, -1.323]);
fis=addmf(fis,'input',1,'mf8','trimf',[-2.236, -1.677, -1.118]);
fis=addmf(fis,'input',1,'mf9','trimf',[-1.732, -1.732, -1.299]);
fis=addmf(fis,'input',1,'mf10','trimf',[-2.291, -1.528, -0.7638]);
fis=addmf(fis,'input',1,'mf11','trimf',[-2.165, -1.443, -0.7217]);
fis=addmf(fis,'input',1,'mf12','trimf',[-1.984, -1.323, -0.6614]);
fis=addmf(fis,'input',1,'mf13','trimf',[-1.732, -1.299, -0.866]);
fis=addmf(fis,'input',1,'mf14','trimf',[-1.291, -1.291, -0.9682]);
fis=addmf(fis,'input',1,'mf15','trimf',[-1.677, -1.118, -0.559]);
fis=addmf(fis,'input',1,'mf16','trimf',[-1.291, -0.9682, -0.6455]);
fis=addmf(fis,'input',1,'mf17','trimf',[-1.299, -0.866, -0.433]);
fis=addmf(fis,'input',1,'mf18','trimf',[-1.528, -0.7638, 0]);
fis=addmf(fis,'input',1,'mf19','trimf',[-1.443, -0.7217, 0.0]);
fis=addmf(fis,'input',1,'mf20','trimf',[-1.323, -0.6614, 0.0]);
fis=addmf(fis,'input',1,'mf21','trimf',[-0.9682, -0.6455, -0.3227]);
fis=addmf(fis,'input',1,'mf22','trimf',[-1.118, -0.559, 0.0]);
fis=addmf(fis,'input',1,'mf23','trimf',[-0.5774, -0.5774, -0.433]);
fis=addmf(fis,'input',1,'mf24','trimf',[-0.866, -0.433, 0.0]);
fis=addmf(fis,'input',1,'mf25','trimf',[-0.6455, -0.3227, 0.0]);
fis=addmf(fis,'input',1,'mf26','trimf',[-0.433, -0.2887, -0.1443]);
fis=addmf(fis,'input',1,'mf27','trimf',[-0.5774, -0.433, 0.2887]);
fis=addmf(fis,'input',1,'mf28','trimf',[-0.2887, -0.1443, 0.0]);
fis=addmf(fis,'input',1,'mf29','trimf',[-0.1443, 0, 0.1443]);
fis=addmf(fis,'input',1,'mf30','trimf',[-0.3227, 0.0, 0.3227]);
fis=addmf(fis,'input',1,'mf31','trimf',[-0.433, 0.0, 0.433]);
fis=addmf(fis,'input',1,'mf32','trimf',[-0.559, 0.0, 0.559]);
fis=addmf(fis,'input',1,'mf33','trimf',[-0.6614, 0.0, 0.6614]);
fis=addmf(fis,'input',1,'mf34','trimf',[-0.7217, 0.0, 0.7217]);
fis=addmf(fis,'input',1,'mf35','trimf',[-0.7638, 0.0, 0.7638]);
fis=addmf(fis,'input',1,'mf36','trimf',[0.0, 0.1443, 0.2887]);
fis=addmf(fis,'input',1,'mf37','trimf',[0.1443, 0.2887, 0.433]);
fis=addmf(fis,'input',1,'mf38','trimf',[0.0, 0.3227, 0.6455]);
fis=addmf(fis,'input',1,'mf39','trimf',[0.2887,0.433, 0.5774]);
fis=addmf(fis,'input',1,'mf40','trimf',[0.0, 0.433, 0.866]);
fis=addmf(fis,'input',1,'mf41','trimf',[0.433, 0.5774,0.5774]);
fis=addmf(fis,'input',1,'mf42','trimf',[0.0, 0.559, 1.118]);
fis=addmf(fis,'input',1,'mf43','trimf',[0.3227, 0.6455, 0.9682]);
fis=addmf(fis,'input',1,'mf44','trimf',[0.0, 0.6614, 1.323]);
fis=addmf(fis,'input',1,'mf45','trimf',[0.0, 0.7217, 1.443]);
fis=addmf(fis,'input',1,'mf46','trimf',[0.0, 0.7638, 1.528]);
fis=addmf(fis,'input',1,'mf47','trimf',[0.433, 0.866, 1.299]);
fis=addmf(fis,'input',1,'mf48','trimf',[0.6455, 0.9682, 1.291]);
fis=addmf(fis,'input',1,'mf49','trimf',[0.559, 1.118, 1.677]);
fis=addmf(fis,'input',1,'mf50','trimf',[0.9682, 1.291, 1.291]);
fis=addmf(fis,'input',1,'mf51','trimf',[0.866, 1.299, 1.732]);
fis=addmf(fis,'input',1,'mf52','trimf',[0.6614,1.323, 1.984]);
fis=addmf(fis,'input',1,'mf53','trimf',[0.7217, 1.443, 2.165]);
fis=addmf(fis,'input',1,'mf54','trimf',[0.7638, 1.528, 2.291]);
fis=addmf(fis,'input',1,'mf55','trimf',[1.299, 1.732, 1.732]);
fis=addmf(fis,'input',1,'mf56','trimf',[1.118, 1.677, 2.236]);
fis=addmf(fis,'input',1,'mf57','trimf',[1.323, 1.984, 2.646]);
fis=addmf(fis,'input',1,'mf58','trimf',[1.677, 2.236, 2.236]);
fis=addmf(fis,'input',1,'mf59','trimf',[1.443, 2.165, 2.887]);
fis=addmf(fis,'input',1,'mf60','trimf',[1.528, 2.291, 3.055]);
fis=addmf(fis,'input',1,'mf61','trimf',[1.984, 2.646, 2.646]);
fis=addmf(fis,'input',1,'mf62','trimf',[2.165, 2.887,2.887]);
fis=addmf(fis,'input',1,'mf63','trimf',[2.291, 3.055, 3.055]);

%%The second DM inputs (input 2)

fis=addvar(fis,'input','ZtoTFN_DM1',[-3.0550 3.0550]);
fis=addmf(fis,'input',1,'mf1','trimf',[-3.055, -3.055, -2.291]);
fis=addmf(fis,'input',1,'mf2','trimf',[-2.887, -2.887, -2.165]);
fis=addmf(fis,'input',1,'mf3','trimf',[-2.646, -2.646, -1.984]);
fis=addmf(fis,'input',1,'mf4','trimf',[-3.055, -2.291, -1.528]);
fis=addmf(fis,'input',1,'mf5','trimf',[-2.887, -2.165, -1.443]);
fis=addmf(fis,'input',1,'mf6','trimf',[2.236, -2.236, -1.677]);
fis=addmf(fis,'input',1,'mf7','trimf',[-2.646, -1.984, -1.323]);
fis=addmf(fis,'input',1,'mf8','trimf',[-2.236, -1.677, -1.118]);
fis=addmf(fis,'input',1,'mf9','trimf',[-1.732, -1.732, -1.299]);
fis=addmf(fis,'input',1,'mf10','trimf',[-2.291, -1.528, -0.7638]);
fis=addmf(fis,'input',1,'mf11','trimf',[-2.165, -1.443, -0.7217]);
fis=addmf(fis,'input',1,'mf12','trimf',[-1.984, -1.323, -0.6614]);
fis=addmf(fis,'input',1,'mf13','trimf',[-1.732, -1.299, -0.866]);
fis=addmf(fis,'input',1,'mf14','trimf',[-1.291, -1.291, -0.9682]);
fis=addmf(fis,'input',1,'mf15','trimf',[-1.677, -1.118, -0.559]);
fis=addmf(fis,'input',1,'mf16','trimf',[-1.291, -0.9682, -0.6455]);
fis=addmf(fis,'input',1,'mf17','trimf',[-1.299, -0.866, -0.433]);
fis=addmf(fis,'input',1,'mf18','trimf',[-1.528, -0.7638, 0.0]);
fis=addmf(fis,'input',1,'mf19','trimf',[-1.443, -0.7217, 0.0]);
fis=addmf(fis,'input',1,'mf20','trimf',[-1.323, -0.6614, 0.0]);
fis=addmf(fis,'input',1,'mf21','trimf',[-0.9682, -0.6455, -0.3227]);
fis=addmf(fis,'input',1,'mf22','trimf',[-1.118, -0.559, 0.0]);
fis=addmf(fis,'input',1,'mf23','trimf',[-0.5774, -0.5774, -0.433]);
fis=addmf(fis,'input',1,'mf24','trimf',[-0.866, -0.433, 0.0]);
fis=addmf(fis,'input',1,'mf25','trimf',[-0.6455, -0.3227, 0.0]);
fis=addmf(fis,'input',1,'mf26','trimf',[-0.433, -0.2887, -0.1443]);
fis=addmf(fis,'input',1,'mf27','trimf',[-0.5774, -0.433, 0.2887]);
fis=addmf(fis,'input',1,'mf28','trimf',[-0.2887, -0.1443, 0.0]);
fis=addmf(fis,'input',1,'mf29','trimf',[-0.1443, 0, 0.1443]);
fis=addmf(fis,'input',1,'mf30','trimf',[-0.3227, 0.0, 0.3227]);
fis=addmf(fis,'input',1,'mf31','trimf',[-0.433, 0.0, 0.433]);
fis=addmf(fis,'input',1,'mf32','trimf',[-0.559, 0.0, 0.559]);
fis=addmf(fis,'input',1,'mf33','trimf',[-0.6614, 0.0, 0.6614]);
fis=addmf(fis,'input',1,'mf34','trimf',[-0.7217, 0.0, 0.7217]);
fis=addmf(fis,'input',1,'mf35','trimf',[-0.7638, 0.0, 0.7638]);
fis=addmf(fis,'input',1,'mf36','trimf',[0.0, 0.1443, 0.2887]);
fis=addmf(fis,'input',1,'mf37','trimf',[0.1443, 0.2887, 0.433]);
fis=addmf(fis,'input',1,'mf38','trimf',[0.0, 0.3227, 0.6455]);
fis=addmf(fis,'input',1,'mf39','trimf',[0.2887,0.433, 0.5774]);
fis=addmf(fis,'input',1,'mf40','trimf',[0.0, 0.433, 0.866]);
fis=addmf(fis,'input',1,'mf41','trimf',[0.433, 0.5774,0.5774]);
fis=addmf(fis,'input',1,'mf42','trimf',[0.0, 0.559, 1.118]);
fis=addmf(fis,'input',1,'mf43','trimf',[0.3227, 0.6455, 0.9682]);
fis=addmf(fis,'input',1,'mf44','trimf',[0.0, 0.6614, 1.323]);
fis=addmf(fis,'input',1,'mf45','trimf',[0.0, 0.7217, 1.443]);
fis=addmf(fis,'input',1,'mf46','trimf',[0.0, 0.7638, 1.528]);
fis=addmf(fis,'input',1,'mf47','trimf',[0.433, 0.866, 1.299]);
fis=addmf(fis,'input',1,'mf48','trimf',[0.6455, 0.9682, 1.291]);
fis=addmf(fis,'input',1,'mf49','trimf',[0.559, 1.118, 1.677]);
fis=addmf(fis,'input',1,'mf50','trimf',[0.9682, 1.291, 1.291]);
fis=addmf(fis,'input',1,'mf51','trimf',[0.866, 1.299, 1.732]);
fis=addmf(fis,'input',1,'mf52','trimf',[0.6614,1.323, 1.984]);
fis=addmf(fis,'input',1,'mf53','trimf',[0.7217, 1.443, 2.165]);
fis=addmf(fis,'input',1,'mf54','trimf',[0.7638, 1.528, 2.291]);
fis=addmf(fis,'input',1,'mf55','trimf',[1.299, 1.732, 1.732]);
fis=addmf(fis,'input',1,'mf56','trimf',[1.118, 1.677, 2.236]);
fis=addmf(fis,'input',1,'mf57','trimf',[1.323, 1.984, 2.646]);
fis=addmf(fis,'input',1,'mf58','trimf',[1.677, 2.236, 2.236]);
fis=addmf(fis,'input',1,'mf59','trimf',[1.443, 2.165, 2.887]);
fis=addmf(fis,'input',1,'mf60','trimf',[1.528, 2.291, 3.055]);
fis=addmf(fis,'input',1,'mf61','trimf',[1.984, 2.646, 2.646]);
fis=addmf(fis,'input',1,'mf62','trimf',[2.165, 2.887,2.887]);
fis=addmf(fis,'input',1,'mf63','trimf',[2.291, 3.055, 3.055]);

%%output: Integrate the opinions of DMs

fis=addvar(fis,'output','Type and extent of impact of indicators on each other',[-1 1]);
fis=addmf(fis,'output',1,'NVS','trimf',[-1 -1 -0.75]);
fis=addmf(fis,'output',1,'NS','trimf',[-1 -0.75 -0.5]);
fis=addmf(fis,'output',1,'NM','trimf',[-0.75 -0.5 -0.25]);
fis=addmf(fis,'output',1,'NW','trimf',[-0.5 -0.25 0]);
fis=addmf(fis,'output',1,'Z','trimf',[-0.25 0 0.25]);
fis=addmf(fis,'output',1,'PW','trimf',[0 0.25 0.5]);
fis=addmf(fis,'output',1,'PM','trimf',[0.25 0.5 0.75]);
fis=addmf(fis,'output',1,'PS','trimf',[0.5 0.75 1]);
fis=addmf(fis,'output',1,'PVS','trimf',[0.75 1 1]);

%% Add Rules

Rules=[57 62 9 1 1
       15 16 2 1 1
       53 61 8 1 1
       62 54 8 1 1
       54 59 7 1 1
       46 45 6 1 1
       59 62 9 1 1
       54 63 8 1 1
       62 45 8 1 1
       54 60 8 1 1 
       59 63 8 1 1 
       60 53 9 1 1 
       59 60 8 1 1 
       47 59 8 1 1 
       60 45 8 1 1 
       52 53 7 1 1 
       60 62 8 1 1 
       53 57 7 1 1 
       53 46 6 1 1 
       46 60 7 1 1
       62 51 9 1 1 
       57 46 7 1 1 
       54 52 7 1 1 
       59 61 8 1 1 
       45 59 8 1 1 
       53 54 7 1 1 
       54 57 7 1 1
       61 45 7 1 1 
       45 59 7 1 1
       59 63 9 1 1 
       53 53 7 1 1 
       63 45 8 1 1];

fis=addrule(fis,Rules);
ruleview(fis);
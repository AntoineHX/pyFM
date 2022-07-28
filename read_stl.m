% Require Point Cloud Processing from Computer Vision Toolbox
clc; clear; close all;

%% Reading STL files

Part_CS1 = stlread('data/Palpation_Part_surface_min.STL');
ptCloud_CS1 =pointCloud(Part_CS1.Points);

figure()
pcshow(ptCloud_CS1)
%% Redaing data - manual palpation

palpatedData = readtable('data/manual_palpation_1.csv');
palpatedPoints = [palpatedData.task_translation_x, ...
                  palpatedData.task_translation_y, ...
                  palpatedData.task_translation_z] * 1e3;

palpatedPoints = palpatedPoints - mean(palpatedPoints);
              
ptCloud_CS2 = pointCloud(palpatedPoints);



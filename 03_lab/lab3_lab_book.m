%% OPTICAL CAVITY - PHYS 408 L2D
%
%
%  James Wasteneys - 34140137
%  Bryden Fogelman - 36294130



%% Mar 12 2018
% 
%  Day 1: Begin by aligning the experimental setup
%  Start by removeing the close mirror walking the beam so that it aligns 
%  with the far mirror at both close and far positions. Next put the lens in
%  first aligning it vertically and then horizontally, with the reflection
%  back towards the laser
% 
% 


%% Mirror Reflectivity

%Incident Power $= 6.63 \pm .015 $mW (Note: loss due to alignment mirror,
%so did after mirror)
P_I = 6.63e-3; %W

%  M1 Transmitted Power = 82.5 \pm 1.5 \mu W
% P_M1_trans = 82.5e-6;  %W
% %  M1 Relected Power = 5.93  \pm .05 $mW
% P_M1_ref = 5.93e-3; %W

% ^above measurements use wrong side of mirror (not shiny side)
% M1 Transmitted Power = 77 \pm 1 \mu W
P_M1_trans = 77.5e-6;  %W
%  M1 Relected Power = 6.43  \pm .05 $mW
P_M1_ref = 6.43e-3; %W
%  Reflection coefficient
R_M1 = P_M1_ref/P_I;
% Transmission Coefficient
T_M1 = P_M1_trans/P_I;
one = T_M1+R_M1%Should add to 1

%  M2 Transmitted Power = 124 \pm 1 \mu W
P_M2_trans = 124e-6; %W
%  M2 Reflected Power = 6.35 \pm .01 mW
P_M2_ref = 6.35e-3; %W
%  Reflection coefficient
R_M2 = P_M2_ref/P_I;
% Transmission Coefficient
T_M2 = P_M2_trans/P_I;
one = (T_M2+R_M2)%Should add to 1

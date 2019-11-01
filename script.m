% Trajectory aircraft 1 vs aircraft 2
% SELECTION CASES
Time; % Time --> Make sure that this one has the same length as the
% shortest aircraft trajectory
% --------------------------

% TWIN OTTER
% --------------------------
%DHC6IS; % Twin Otter initial state. Used for calculating the conflict point beased on a meneuver in 800sec (4800x3) "GEOD"
%DHC6; % Twin Otter no avoidance (4800x3) "GEOD"
%DHC6_2T15; % Twin Otter avoidance (4800x3) "GEOD" Initial study with no
%recovery case. CCECE_2 data
DHC6NoRecovery_2T15; % Twin Otter No recovery (4800x3) "GEOD" 2Tau+15 Study
%DHC6ImmediateRecovery_2T15; % Twin Otter instant recovery (4743x3) "GEOD"2Tau+15 Study

% CESSNA 172
% -------------------------
% Simulation Cessna C172 Jan 30, 2018
% To locate the encounter
%C172Section1; % Straight path section 1 (4800x3) "GEODC172S1"
% C172Section2; % Straight path section 2 (4800x3) "GEODC172S2"

% Cessna C172 Feb 20, 2018
% Section 2 shifted to focus on the encounter (cell 1570)
% The trajectory should start 23.26sec before the encounter (2T+15) 
 C172Encounter; % Section 2 with the encounter (4800x3) "GEODC172S2Enc"


% DISTANCES CALCULATION
% --------------------------
plot_dist(SimTime,GEOD, GEODC172S2Enc) % Plots
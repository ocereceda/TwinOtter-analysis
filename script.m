% Trajectory aircraft 1 vs aircraft 2
% SELECTION CASES
Time; % Time --> Make sure that this one has the same length as the
% shortest aircraft trajectory
% --------------------------

% TWIN OTTER
% --------------------------
%DHC6IS; % Twin Otter initial state. Used for calculating the conflict point beased on a meneuver in 800sec (4800x3) "GEOD"
%DHC6IS_2; %Twin Otter inital state with no delay for the immediate recovery
%DHC6; % Twin Otter no avoidance (4800x3) "GEOD" 
%DHC6_2; % Twin Otter no avoidance (4800x3) "GEOD" SECOND TRY
%DHC6_2T15; % Twin Otter avoidance (4800x3) "GEOD" Initial study with no
%recovery case. CCECE_2 data
%DHC6Man; % Twin Otter with no recovery study. Starts with the maneuver (4800x3) "GEOD" 
%DHC6NoRecovery; % Twin Otter No recovery (4800x3) "GEOD"
%DHC6NoRecovery_2; % Twin Otter No recovery (4800x3) "GEOD" Second study
%--> Results very similar to the initial ones posted in the first paper
DHC6NoRecovery_3; % Twin Otter No recovery (4800x3) "GEOD" 2Tau+15 Second study
%WITH THE NEW APPROACH
%DHC6ImmediateRecovery; % Twin Otter instant recovery (4800x3) "GEOD" TO BE
%MODIFIED WITH THE NEW APPROACH
%DHC6ImmediateRecovery_2; % Twin Otter instant recovery (4743x3) "GEOD"2Tau+15 Second study
%WITH THE NEW APPROACH

% CESSNA 172
% -------------------------
% Simulation Cessna C172 Jan 30, 2018
% To locate the encounter
%C172Section1; % Straight path section 1 (4800x3) "GEODC172S1"
% C172Section2; % Straight path section 2 (4800x3) "GEODC172S2"

% Cessna C172 Feb 20, 2018
% Section 2 shifted to focus on the encounter (cell 1570)
% The trajectory should start 23.26sec before the encounter (2T+15) 
% C172Encounter; % Section 2 with the encounter (4800x3) "GEODC172S2Enc"
 C172Encounter2; % Section 2 with the encounter (4800x3) "GEODC172S2Enc" SECOND TRY


% DISTANCES CALCULATION
% --------------------------
plot_dist(SimTime,GEOD, GEODC172S2Enc) % Plots
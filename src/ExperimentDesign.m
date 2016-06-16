%==========================================================================%
% Copyright (c) 2015 Varnerlab, 
% School of Chemical and Biomolecular Engineering, 
% Cornell University, Ithaca NY 14853 USA.
% 
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is 
% furnished to do so, subject to the following conditions:
% The above copyright notice and this permission notice shall be included in
% all copies or substantial portions of the Software.
% 
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
% THE SOFTWARE.
%
%
% ExperimentDesign.m
%
% This function takes DataFile parameters , runs the system to
% steady state then applies a stimulus STIM.
%
% Inputs:
% DFIN - DataFile structure
% STIM - Matrix containing information about stimuli
% TSTOP - Length of the experiment
% TSTEP - Time step
%
% Outputs:
% TIME_EXP - Column vector of time points
% OUTPUT_EXP - Matrix of concentrations of all species over time
%
% The simulation will run from zero to TSTOP with time step TSTEP.
%
% STIM should be a four column matrix of the form 
% [WHEN TYPE PARAM MAGNITUDE]
% with each row specifying a separate stimulus.
% WHEN is the time at which the stimulus is applied. If it is zero 
% then this function will apply it to the system before steady state
% is calculated.
% TYPE can take on three different values depending on the type of 
% stimulus:
% 0 = relative change
% 1 = absolute change
% 2 = absolute value
% PARAM is defined as the location of the parameter in the concatenated 
% vector [IC; KV].
% MAGNITUDE is just the magnitude of the stimulus
%
% STIM can be a string corresponding to a filename containing the matrix.
%
%==========================================================================%

function [TIME_EXP, OUTPUT_EXP] = ExperimentDesign(DFIN,STIM,TSTOP,TSTEP)

	% Initialize outputs -
	TIME_EXP = [];
	OUTPUT_EXP = [];
	
	% Load stimulus file if needed -
	if ischar(STIM)
		cmd=["STIM = load('",STIM,"');"];
		eval(cmd);
	end
	
	% Define parameter vectors -
	KV = DFIN.RATE_CONSTANT_VECTOR;
	IC = DFIN.INITIAL_CONDITIONS;
	
	% System size -
	NUM_KV=length(KV);
	NUM_IC=length(IC);
	
	% Run system to steady state -
	[ICTIME, IC_SS] = ExperimentSteadyState(DFIN,STIM);
	
	% Make sure steady state was satisfied -
	if (size(IC_SS)==[1 1])||(ischar(IC_SS)==1)
		TIME_EXP = NaN;
		OUTPUT_EXP = NaN;
		msg = ['error: SOMETHING WENT WRONG!'];
		disp(msg);
		return;
	end
	
	% Add to outputs -
	TIME_EXP = [TIME_EXP; 0];
	OUTPUT_EXP = [OUTPUT_EXP; IC_SS(end,:)];
	
	% Create instance of steady state -
	IC = IC_SS(end,:)';
	
	% Change rate constant vector if necessary -
	NUM_STIM = size(STIM,1);
	for i=1:NUM_STIM
		if (STIM(i,1)==0)&&(STIM(i,3)>NUM_IC)
			if STIM(i,2)==0
				KV(STIM(i,3)-NUM_IC) = STIM(i,4)*KV(STIM(i,3)-NUM_IC);
			elseif STIM(i,2)==1
				KV(STIM(i,3)-NUM_IC) = STIM(i,4)+KV(STIM(i,3)-NUM_IC);
			else
				KV(STIM(i,3)-NUM_IC) = STIM(i,4);
			end
		end
	end
	
	% Apply stimuli for non-zero WHEN -
	for i=1:NUM_STIM
		if (STIM(i,1)~=0)
			if (STIM(i,2)==0)
				if (STIM(i,3)>NUM_IC)
					KV(STIM(i,3)-NUM_IC) = STIM(i,4)*KV(STIM(i,3)-NUM_IC);
				else
					IC(STIM(i,3)) = STIM(i,4)*IC(STIM(i,3));
				end
			elseif (STIM(i,2)==1)
				if (STIM(i,3)>NUM_IC)
					KV(STIM(i,3)-NUM_IC) = STIM(i,4)+KV(STIM(i,3)-NUM_IC);
				else
					IC(STIM(i,3)) = STIM(i,4)+IC(STIM(i,3));
				end
			else
				if (STIM(i,3)>NUM_IC)
					KV(STIM(i,3)-NUM_IC) = STIM(i,4);
				else
					IC(STIM(i,3)) = STIM(i,4);
				end
			end
		end
	end
	
	% New DataFile -
	DF = DFIN;
	DF.RATE_CONSTANT_VECTOR = KV;
	DF.INITIAL_CONDITIONS = IC;
	DF.PARAMETER_VECTOR = [KV; IC];
	
	% Solve over time interval -
	[TIME2, OUTPUT2] = SUNDIALSCallWrapper(0,TSTOP,TSTEP,DF,'output.dat');
	unlink('output.dat');
	
	% Check that everything went swell -
	if (size(OUTPUT2)==[1 1])||(ischar(OUTPUT2)==1)
		TIME_EXP = NaN;
		OUTPUT_EXP = NaN;
		msg = ['error: OH NO!'];
		disp(msg);
		return;
	end
	
	% Spit out solution -
	TIME2 = TIME2';
	TIME_EXP = [TIME_EXP; TIME2];
	OUTPUT_EXP = [OUTPUT_EXP; OUTPUT2];

return;
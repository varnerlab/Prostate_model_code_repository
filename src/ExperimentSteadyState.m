%==========================================================================%
%
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
% ExperimentSteadyState.m
%
% This function wrapper takes a DataFile structure, applies any required 
% stimuli then feeds it to a steady state function.
%
% Inputs:
% DFIN - DataFile structure
% STIM - Matrix containing information about stimuli
%
% Outputs:
% SSTIME - column vector of time
% OUTPUT_SS - matrix of steady state concentrations with row corresponding 
% to time steps
%
% The matrix STIM is an optional argument containing the parameter number, 
% type of stimulus, and stimulus value, that will be applied to the system 
% prior to calculation of steady state.
%
% STIM can be a string corresponding to a filename containing the 
% information.
%
% Add stimulus, if desired, prior to steady state calculation.
% STIM should be a four column matrix of the form [WHEN TYPE PARAM MAGNITUDE]
% with each row specifying a separate stimulus.
% WHEN is the time at which the stimulus is applied. This function will only
% apply the stimulus if WHEN is equal to zero.
% TYPE can take on three different values depending on the type of stimulus:
% 0 = relative change
% 1 = absolute change
% 2 = absolute value
% PARAM is defined as the location of the parameter in the concatenated 
% vector [IC; KV].
% MAGNITUDE is just the magnitude of the stimulus
%
%==========================================================================%

function [SSTIME, OUTPUT_SS] = ExperimentSteadyState(DFIN,STIM)

	% Define parameter vectors -
	KV = DFIN.RATE_CONSTANT_VECTOR;
	IC = DFIN.INITIAL_CONDITIONS;
	
	% System size -
	NUM_KV = length(KV);
	NUM_IC = length(IC);
	
	if nargin==2
	
		% LOAD STIM IF NECESSARY -
		if ischar(STIM)
			cmd=["STIM = load('",STIM,"');"];
			eval(cmd);
		end
		
		% Number of stimuli -
		NUM_STIM = size(STIM,1);
		
		% Apply stimulus before steady state if necessary -
		for i=1:NUM_STIM
			if STIM(i,1)==0
				if STIM(i,2)==0
					if STIM(i,3)>NUM_IC
						KV(STIM(i,3)-NUM_IC)=STIM(i,4)*KV(STIM(i,3)-NUM_IC);
					else
						IC(STIM(i,3))=STIM(i,4)*IC(STIM(i,3));
					end
				elseif STIM(i,2)==1
					if STIM(i,3)>NUM_IC
						KV(STIM(i,3)-NUM_IC)=STIM(i,4)+KV(STIM(i,3)-NUM_IC);
					else
						IC(STIM(i,3))=STIM(i,4)+IC(STIM(i,3));
					end
				else
					if STIM(i,3)>NUM_IC
						KV(STIM(i,3)-NUM_IC)=STIM(i,4);
					else
						IC(STIM(i,3))=STIM(i,4);
					end
				end
			end
		end
		
	end
	
	% New DataFile -
	DF = DFIN;
	DF.RATE_CONSTANT_VECTOR = KV;
	DF.INITIAL_CONDITIONS = IC;
	DF.PARAMETER_VECTOR = [KV; IC];
	
	% Get steady state -
	%[SSTIME, OUTPUT_SS] = FindSteadyStateRel(@SUNDIALSCallWrapper,DF);
	 [SSTIME, OUTPUT_SS] = FindSteadyStateAbs(@SUNDIALSCallWrapper,DF);
	
	% Check steady state was satisfied -
	if (size(OUTPUT_SS)==[1 1])||(ischar(OUTPUT_SS)==1)
		SSTIME = NaN;
		OUTPUT_SS = NaN;
		% msg = ['error: Steady state failed :('];
		% disp(msg);
	end


return;
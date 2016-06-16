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
% FindSteadyState.m
%
% Simple routine for numerically estimating the steady-state of a system 
% of ODEs by running the model until the difference between consecutive 
% solutions is less than some specified tolerance.
%
% Arguments:
% pDriverFile - Pointer to the ODE wrapper
% pDataFile - Pointer to the DataFile
% DF 	- 	DataFile structure
% TSIM	-	Holds the simulation times for the 
% XSIM -	Holds the steady-state solution (depends upon solver) 
%
%==========================================================================%

function [TSIM,XSIM] = FindSteadyStateAbs(pDriverFile,DF)

	% Initialize outputs -
	XSIM = [];
	TSIM = [];

	% System size -
	NP = DF.NUMBER_PARAMETERS;
	NX = DF.NUMBER_OF_STATES;
	
	% Do we want to exclude some species from the ss calculation? -
	EXCLUDE = [];
	IDX = 1:NX;
	INCLUDE = setdiff(IDX,EXCLUDE);
	DEPTH = length(INCLUDE);
	
	% Set lower concentration threshold, exclude values below this -
	THRESHOLD = 10^-6;
	
	% Find a steady state -
	SS_LOOP_FLAG = 1;
	TSTART = 0.0;
	TSTOP = 1000;
	TSTEP = 100;
	TINTERVAL = 100;
	
	% Define relative tolerance -
	EPSILON = 0.001;
	TOL_BEST = 10000000;
	
	while (SS_LOOP_FLAG)
		
		% Run the solver for a bit -
		[TTMP_1,XTMP_1] = feval(pDriverFile,TSTART,TSTOP,TSTEP,DF,'output.txt');
		unlink('output.txt');
		
		% Reset the IC -
		IC = transpose(XTMP_1(end,:));
		DF.INITIAL_CONDITIONS = IC;
		
		% Run for the solver for a bit longer -
		[TTMP_2,XTMP_2] = feval(pDriverFile,TSTART,TINTERVAL,TSTEP,DF,'output.txt');
		unlink('output.txt');
		
		% Run simulation until the change between time points is less than tolerance -
		ERR = (XTMP_2(end,INCLUDE)' - XTMP_1(end,INCLUDE)').^2;

		% Sort the error and grab the worst offenders -
		[mV,I]=sort(ERR,'descend');
		TOL = sum(mV(1:DEPTH));

		DIFFERENCE_BETWEEN_TRIALS = abs((TOL-TOL_BEST));

		msg=['Current error tolerance = ',num2str(TOL)];
		disp(msg);

		% Super-hack -
		if (isnan(TOL))
			% Something is wrong in the TOL calc - use the max err instead -
			TOL = mV(1);
		end;

		if (TOL < EPSILON || DIFFERENCE_BETWEEN_TRIALS<1e-4)
		
			% I have a steady-state. Grab the value and kill loop -
			SS_LOOP_FLAG = 0;
			ICSS = transpose(XTMP_2(end,:));
			
		else

			% Reset the time and IC -
			% Get the last time point and set the new time scale -
			TSTART = TTMP_2(end);
			TSTOP = TSTART + 10000;

			TOL_BEST = TOL;

			% Reset the IC -
			IC = transpose(XTMP_2(end,:));
			DF.INITIAL_CONDITIONS = IC;
			
		end;
	end;
	
	% Lets get the initial values -
	XSIM = [XSIM;ICSS'];
	TSIM = [TSIM;0];
	
	%Run to next stimulus -
	DF.INITIAL_CONDITIONS=ICSS;
	[T,X]=feval(pDriverFile,0.0,10,1.0,DF,'output.txt');
	
	% OK, so I reset the ICs here -
	DF.INITIAL_CONDITIONS = X(end,:)';
	XSIM = [XSIM; X(2:end,:)];
	TSIM = [TSIM; T(2:end)'];
	
return;
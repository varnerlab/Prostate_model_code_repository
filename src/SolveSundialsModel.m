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
% SolveSundialsModel.m
%
% This function makes the system call to SUNDIALS to solve a set of
% ODEs. It returns the simulation time vector and solution.
%
%==========================================================================%

function [TSIM,X] = SolveSundialsModel(TSTART,TSTOP,Ts,OUTNAME)

	% Formulate command string -
	cmd = ['ulimit -s 60000 && sh RunModel.sh ',OUTNAME,' ',num2str(TSTART),' ',num2str(TSTOP),' ',num2str(Ts)];
	disp(cmd);

	% Make system call to SUNDIALS solver -
	[solveStatus, solveTime] = system(cmd);
	
	% Return NaN if solver failed -
	if (solveStatus != 0)
	
		TSIM = NaN;
		X = NaN;
		msg = ['Something went wrong!'];
		disp(msg);
		
	else
	
		try
			% Load solution from disk -
			cmd = ['X = load("',OUTNAME,'");'];
			eval(cmd);
			% Formulate time vector -
			TSIM = TSTART:Ts:TSTOP;
		catch
			TSIM = NaN;
			X = NaN;
			msg = ['Could not load data from disk!'];
			disp(msg);
		end
		
	end
	
return;
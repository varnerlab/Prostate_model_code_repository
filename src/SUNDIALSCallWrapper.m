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
% SUNDIALSCallWrapper.m
%
% This function takes a DataFile, saves the parameters to disk
% and calls the function which calls the SUNDIALS solver.
%==========================================================================%

function [TSIM, X] = SUNDIALSCallWrapper(TSTART,TSTOP,Ts,DF,OUTNAME)

	% Save DataFile parameters to disk - 
	kV = DF.RATE_CONSTANT_VECTOR;
	save -ascii KineticParameters.dat kV;
	IC = DF.INITIAL_CONDITIONS;
	save -ascii InitialConditions.dat IC;

	try
	
		% Call SUNDIALS solver code -
		[TSIM, X] = SolveSundialsModel(TSTART,TSTOP,Ts,OUTNAME);
		
	catch
	
		% Return error -
		TSIM = NaN;
		X = NaN;
		msg = ['ERROR: ',lasterr];
		disp(msg);
		
	end_try_catch
	
return;

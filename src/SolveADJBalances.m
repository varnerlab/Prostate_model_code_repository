% ----------------------------------------------------------------------
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
% SolveADJBalances.m was generated using the UNIVERSAL code generator system.
% Username: kathyrogers
% Type: OCTAVE-M
% Version: v1.0
% 
% Arguments: 
% pDataFile  - pointer to datafile 
% TSTART  - Time start 
% TSTOP  - Time stop 
% Ts - Time step 
% DFIN  - Custom data file instance 
% TSIM - Simulation time vector 
% X - Simulation state array (NTIME x NSPECIES) 
% S - Simulation sensitivity array for parameter pIndex(NTIME X NSPECIES) 
% ----------------------------------------------------------------------


function [TSIM,X,S]=SolveADJBalances(pDataFile,TSTART,TSTOP,Ts,pIndex,DFIN)

% Check to see if I need to load the datafile
if (~isempty(DFIN))
	DF = DFIN;
else
	DF = feval(pDataFile,TSTART,TSTOP,Ts,[]);
end;

% Get reqd stuff from data struct -
IC = DF.INITIAL_CONDITIONS;
TSIM = TSTART:Ts:TSTOP;
STM = DF.STOICHIOMETRIC_MATRIX;
kV = DF.PARAMETER_VECTOR;
NRATES = DF.NUMBER_PARAMETERS;
NSTATES = DF.NUMBER_OF_STATES;

% Append the initial sensitivity values - assuming zero here
IC = [IC; zeros(NSTATES,1)];

% Call the ODE solver - the default is LSODE
f = @(x,t)ADJBalances(x,t,STM,kV,NRATES,NSTATES,pIndex);
[xOut]=lsode(f,IC,TSIM);

% Seperate xOut into state and sensitivity matrix
X = xOut(:,1:NSTATES);
S = xOut(:,NSTATES+1:end);
return;
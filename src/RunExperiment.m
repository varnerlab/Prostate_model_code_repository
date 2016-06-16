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
% RunExperiment.m
% This function will run a given Experimental Design with Parameter set number given and plot species given
%
% Inputs:
% 
% Design_Num = Number of the design you want to run
% Parameter_num = Number of the parameter member that you want to run (i.e. what column in KV_Total)
% Species: What species do you want to plot
%
%==========================================================================%

function [TSIM,XALL] = RunExperiment(Design_Num,Parameter_num,Species)
	
	% Set up datafile structure
	DFIN = DataFile();
	
	% Load Parameters
	load ./KV_Total.dat;
	
	% Set Parameters
	IC = KV_Total(1675:end,Parameter_num);
	DFIN.INITIAL_CONDITIONS = IC;
	kV = KV_Total(1:1674,Parameter_num);
	DFIN.RATE_CONSTANT_VECTOR = kV;
	DFIN.PARAMETER_VECTOR = [kV ; IC];

	% Solve Model for Design 
	cmd = ['[TSIM, XALL] = ExperimentDesignWrapper',num2str(Design_Num),'(DFIN);'];
	eval(cmd);

	% Plot Results for Specific Species
	cmd = ['plot(TSIM,XALL(:,',num2str(Species),'))';]
	eval(cmd);

	% Set y-axis
	cmd = ['y_max = ceil(max(XALL(:,',num2str(Species),')))'];
	eval(cmd);
	
	% Last time point
	x_max = TSIM(end,1);
	
	% Set axis values and labels
	axis([0,x_max,0,y_max]);
	xlabel('Time (Hrs)');
	Name = ['Concentration Species ',num2str(Species),' (A.U.)']; 
	ylabel(Name);

	
return;
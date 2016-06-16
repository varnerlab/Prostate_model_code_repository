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
% ExperimentError.m
%
% This function takes a TIME structure and INPUT structure of simulations
% a matrix of the parameter values corresponding to the species you 
% want to measure SPECIES, and an experimental data matrix DATA and will 
% compute the mean squared error MSE between the simulation output and 
% experimental data.
%
% Inputs:
% TIME - time structure of simulated experiments
% INPUT - concentration structure of simulated experiments
% SPECIES - matrix containing species index values
% DATA - matrix containing experimental data
%
% Outputs:
% MSE - mean squared error between simulation and experimental data
%
% SPECIES or DATA can be strings corresponding to a filename containing
% the information. TIME and INPUT arrays can be stored as .mat files.
%
% TIME and INPUT will typically be computed using the 
% ExperimentDesign.m function.
%
% SPECIES should be a matrix of the form [PARAM COPY]
% PARAM are the parameter indices of the species to keep track of.
% COPY is the number of copies that complex contains of the species 
% of interest. This takes into account dimer complexes.
%
% DATA should be a matrix of the form [TIME VALUE ERROR DESIGN]
% TIME is the time point at which the measurement was obtained.
% VALUE is the value of the measurement.
% ERROR is the error associated with that measurement.
% DESIGN is a number corresponding to the experimental design that data 
% requires.
%
%==========================================================================%

function [MSE] = ExperimentError(TIME,INPUT,SPECIES,DATA) 

	% Load species and data files if necessary -
	if ischar(SPECIES)
		cmd=["SPECIES=load('",SPECIES,"');"];
		eval(cmd);
	end
	if ischar(DATA)
		cmd=["DATA=load('",DATA,"');"];
		eval(cmd);
	end
	
	% System size -
	NUM_DATA=size(DATA,1);
	DESIGN_VEC=unique(DATA(:,end));
	NUM_DESIGN=length(DESIGN_VEC);
	
	% Check that time and input are sensible -
	for i=1:NUM_DESIGN
		if (size(INPUT{DESIGN_VEC(i)})==[1 1])||(ischar(INPUT{DESIGN_VEC(i)})==1)
			MSE = NaN;
			return;
		end
	end
	
	% Collect data to calculate scaling factor and MSE -
	ALL_DATA=[];
	for k=1:NUM_DESIGN
		for j=1:NUM_DATA
			if DATA(j,end)==DESIGN_VEC(k)
				if DATA(j,1)==0
					ALL_DATA=[ALL_DATA; sum(INPUT{DESIGN_VEC(k)}(1,SPECIES(:,1)).*transpose(SPECIES(:,2))) DATA(j,2) DATA(j,3)];
				else
					% TSTEP=max(TIME{DESIGN_VEC(k)})/(length(TIME{DESIGN_VEC(k)})-1);
					TSTEP = 1;
					ALL_DATA=[ALL_DATA; sum(INPUT{DESIGN_VEC(k)}(2+round(DATA(j,1)/TSTEP),SPECIES(:,1)).*transpose(SPECIES(:,2))) DATA(j,2) DATA(j,3)];
				end
			end
		end
	end
	
	% Calculate scaling factor -
	SCALE = ScalingFactorBeta(ALL_DATA);
	
	% Scale the simulated data -
	ALL_DATA(:,1) = SCALE*ALL_DATA(:,1);
	
	% Calculate MSE -
	MSE = mean(((ALL_DATA(:,1)-ALL_DATA(:,2))./ALL_DATA(:,3)).^2);

return;
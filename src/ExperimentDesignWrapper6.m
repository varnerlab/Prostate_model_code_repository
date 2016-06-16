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
% ExperimentDesignWrapper6.m
%
% This function will run Experimental Design 6 given a DataFile structure
%
% Inputs:
% DFIN - DataFile structure
%
% Outputs
% TIME6 - Simulation time points
% OUTPUT6 - Simulation concentration matrix
%
% STIM can be a string corresponding to a filename containing the matrix.
%
%==========================================================================%

function [TIME6, OUTPUT6] = ExperimentDesignWrapper6(DFIN)

	[TIME6, OUTPUT6] = ExperimentDesign(DFIN,"../ExperimentDesign/STIM6.dat",25,1);

return;
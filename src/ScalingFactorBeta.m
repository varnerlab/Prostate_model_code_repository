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
% ScalingFactorBeta.m
%
% This scaling factor is taken from the Sethna group. 
% [Brown, KS & Sethna, JP. Phys Rev E Stat Nonlin Soft Matter Phys 
% 68, 021904 (2003)]
%
% This function takes a matrix DATA with the form [SIM EXP ERROR]
% SIM and EXP are the simulation and experimental points we are comparing
% ERROR is the error associated with the experimental point.
%
% Inputs:
% DATA - Matrix containing simulation and experimental data points
%
% Output:
% SCALE - multiplicative scaling factor
%
%==========================================================================%

function [SCALE] = ScalingFactorBeta(DATA)

	SCALE = sum(DATA(:,1).*DATA(:,2)./(DATA(:,3).^2))/sum((DATA(:,1)./DATA(:,3)).^2);

return;

#### Prostate Cancer Model Code

____________________________________________________
#####author: kvr28@cornell.edu (Katharine Rogers)
#####location: [Varnerlab](http://www.varnerlab.org), Cornell University
#####version: 1.0
____________________________________________________

The model equations describe the signal transduction in a prostate cell due to different inputs (i.e. DHT, EGF). Different cell types (LNCaP C33, C51, and C81) are modeled. 

The model was adapted from literature sources.

####How do we download the model code and get it into octave?
Click the download ZIP button on the lower right hand of this page. A zip archive containing the model code will automatically download to your computer.

You can execute the model code using [Octave](https://www.gnu.org/software/octave/), 
an open source clone of MATLAB. [Octave](https://www.gnu.org/software/octave/) is free, and available for both Windows and OSX.
Precompiled Octave binaries can downloaded from [Octave Forge](http://octave.sourceforge.net).

You also must download the SUNDIALS library for the code to run. 

####Before running the code for the first time:

Go to src_sfSUNDIALS directory. Use following command in terminal: __sh BuildModel.sh__. 

####How do we execute the simulation code and what gets returned?
The model code is executed from the octave command prompt using the __RunExperiment.m__ script. RunExperiment takes your experiment and parameter number inputs and solves the 
model equations. RunExperiment will output a graph of concentraion of the species given as the input vs time.


The experiments run from 1 to 14 and parameter member numbers from 1 to 5000. The experiment stimulus options can be found in __PCC_ExperimentDesignInfo.xls__. The model species are given in __DataFile.m__ and run from 1 to 780.

The solution of the model equations also gets returned to the octave workspace. The simulation time vector is held in the variable __TSIM__. __TSIM__ is a 1 x T
row vector, where T is the number of time steps. The model concentrations are held in the variable __XALL__. __XALL__ is a 780 x T array, where the rows are  the model species and the columns are the time values. The model species are given in __DataFile.m__.

The model time scale is in hours. The concentrations are in arbitrary units. 






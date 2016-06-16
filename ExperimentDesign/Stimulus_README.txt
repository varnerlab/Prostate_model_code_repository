Each experiment requires one or more experimental designs.

Each of these stimulus files represents a particular experimental design.

Each contains a matrix with columns corresponding to:

[WHEN TYPE PARAM MAGNITUDE]

WHEN = the time when the stimulus is applied. This is 0 if it is applied prior to steady state and 1 if it is applied after steady state.

TYPE = the kind of change we are making to a particular parameter. This is 0 if it is a multiplicative change and 1 if it is an additive change.

PARAM = the index of the parameter we are changing. This is the location in the concatenated vector [IC; kV]

MAGNITUDE = the magnitude of the change we want to make.
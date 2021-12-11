function val = objectiveXFunction(t)
% objectiveXFunction returns the difference between given X value of the
% NURBS curve and the NURBS curve X value received by given T parameter;
% current function is a subject of optimization
%
% Examples:
%	objectiveXFunction(t)
%
% IN:
%	t : double
%
% OUT:
%	val : double

global nurbs paramsToFind;
val = abs(paramsToFind.x - nrbevalx(nurbs, t));
end
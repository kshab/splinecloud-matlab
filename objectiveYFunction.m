function val = objectiveYFunction(t)
% objectiveXFunction returns the difference between given Y value of the
% NURBS curve and the NURBS curve Y value received by given T parameter;
% current function is a subject of optimization
%
% Examples:
%	objectiveYFunction(t)
%
% IN:
%	t : double
%
% OUT:
%	val : double

global nurbs paramsToFind;
val = abs(paramsToFind.y - nrbevaly(nurbs, t));
end
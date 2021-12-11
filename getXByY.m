function x = getXByY(inputNurbs, y)
% getXByY evaluates X value of the function created with NURBS by given Y value
%
% Examples:
%	getYByX(inputNurbs, x)
%
% IN:
%	inputNurbs - NURBS curve data received via 'nrbmak' function
%   y	: double - y value
%
% OUT:
%	x	: double - x value of the function created with NURBS

global nurbs paramsToFind;
nurbs = inputNurbs;
paramsToFind = {};
paramsToFind.y = y;

t0 = [0];
t1 = [1];

tOptimized = fminbnd(@(t)objectiveYFunction(t), t0, t1);

coords = nrbeval(nurbs, tOptimized);
x = coords(1,:);
end
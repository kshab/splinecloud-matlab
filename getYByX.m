function y = getYByX(inputNurbs, x)
% getYByX evaluates Y value of the function created with NURBS by given X value
%
% Examples:
%	getYByX(inputNurbs, x)
%
% IN:
%	inputNurbs - NURBS curve data received via 'nrbmak' function
%   x	: double - x value
%
% OUT:
%	y	: double - value of the function created with NURBS

global nurbs paramsToFind;
nurbs = inputNurbs;
paramsToFind = {};
paramsToFind.x = x;

t0 = [0];
t1 = [1];

tOptimized = fminbnd(@(t)objectiveXFunction(t), t0, t1);

coords = nrbeval(nurbs, tOptimized);
y = coords(2,:);
end
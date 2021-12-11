function [ctrlPoints, knots] = extractNurbsParams(curveData)
% extractNurbsParams extracts control points and knots from the NURBS curve
% data
%
% Examples:
%	extractNurbsParams(curve)
%
% IN:
%	curveData - NURBS curve data received via 'fetchCurve' function
%
% OUT:
%	ctrlPoints	: 2xN double
%   knots       : 1xN double

ctrlPoints = curveData.spline.c';
knots = curveData.spline.t';
end


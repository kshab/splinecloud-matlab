function [ctrlPoints, knots] = extractNurbsParams(curve)
ctrlPoints = curve.spline.c';
knots = curve.spline.t';
end


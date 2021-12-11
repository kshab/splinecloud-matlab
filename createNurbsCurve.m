function curve = createNurbsCurve(nurbs, points)
% createNurbsCurve creates NURBS curve
%
% Examples:
%	createNurbsCurve(nurbs, 1000)
%
% IN:
%	curveData - NURBS curve data received via 'nrbmak' function
%
% OUT:
% curve	- NURBS curve received via 'nrbmak' function given in the following
% format:
%	struct with fields:
%       form: 'char'
%       dim: 'double'
%       number: 'double'
%       coefs: [4×6 double]
%       order: double
%       knots: 1xN double

curve = nrbeval(nurbs, linspace(0.0,1.0,points));
end


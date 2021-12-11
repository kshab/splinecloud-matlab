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
%	curve	- NURBS curve received via 'nrbmak' function given in the following

curve = nrbeval(nurbs, linspace(0.0,1.0,points));
end


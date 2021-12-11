function x = nrbevalx(nurbs,tt)
% nrbevalx returns X value of the NURBS curve by given T parameter
%
% Examples:
%	nrbevalx(nurbs,tt)
%
% IN:
%   nurbs - NURBS curve data received via 'nrbmak' function
%	tt : double or 1xN double
%
% OUT:
%	x : double

coords = nrbeval(nurbs, tt);
x = coords(1,:);
end
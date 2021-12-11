function y = nrbevaly(nurbs,tt)
% nrbevaly returns Y value of the NURBS curve by given T parameter
%
% Examples:
%	nrbevaly(nurbs,tt)
%
% IN:
%   nurbs - NURBS curve data received via 'nrbmak' function
%	tt : double or 1xN double
%
% OUT:
%	y : double

coords = nrbeval(nurbs, tt);
y = coords(2,:);
end
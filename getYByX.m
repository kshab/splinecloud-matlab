function y = getYByX(curve, x)
yMin = min(curve(2,:));
yMax = max(curve(2,:));
xLine = [x, x; yMin, yMax];
interCoord = InterX(xLine, curve);
y = interCoord(2, :);
end
function x = getXByY(curve, y)
xMin = min(curve(1,:));
xMax = max(curve(1,:));
yLine = [xMin, xMax; y, y];
interCoord = InterX(yLine, curve);
x = interCoord(1);
end


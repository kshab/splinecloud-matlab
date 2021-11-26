function curve = createNurbsCurve(nurbs, points)
curve = nrbeval(nurbs, linspace(0.0,1.0,points));
end


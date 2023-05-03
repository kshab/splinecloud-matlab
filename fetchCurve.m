function curve = fetchCurve(path)
% fetchCurve fetches curve data from splinecloud.com by curve's id
%
% Examples:
%	fetchCurve(path)
%
% This function will return NURBS curve data in the following format:
%	struct with fields:
%       uid: 'char',
%       name: 'char',
%       curve_type: 'char',
%       order: 'double',
%       spline: 1x1 struct
%
% IN:
%	path - curve's id or path to it
%	examples: 'http://alpha.splinecloud.com/api/curves/CURVE_ID' or 'CURVE_ID'
%
% OUT:
%	curve - NURBS curve

import matlab.net.*
import matlab.net.http.*

defaultAdress = 'http://alpha.splinecloud.com/api/curves/';
finalPath = '';

if contains(path, defaultAdress)
    finalPath = path;
else
    finalPath = strcat(defaultAdress, path);
end
    
    r = RequestMessage;
    uri = URI(finalPath);
    resp = send(r, uri);
    curve = resp.Body.Data;
end

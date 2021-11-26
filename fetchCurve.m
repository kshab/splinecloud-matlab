function curve = fetchCurve(path)
import matlab.net.*
import matlab.net.http.*

r = RequestMessage;
uri = URI(path);
resp = send(r, uri);
curve = resp.Body.Data;

end


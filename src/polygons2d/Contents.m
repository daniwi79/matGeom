% MATGEOM-POLYGONS
%
%   The 'polygons' module contains functions operating on shapes composed
%   of a vertex list, like polygons or polylines.
%
%   We call 'polyline' the curve defined by a series of vertices.
%   A polyline can be either closed or open, depending on whether the last
%   vertex is connected to the first one or not. This can be given as an
%   option is some functions in the module.
%   A 'polygon' is the planar domain delimited by a closed polyline. We
%   sometimes want to consider 'complex polygons', whose boundary is
%   composed of several disjoint domains. The domain defined by a single
%   closed polyline is called 'simple polygon'.
%   We call 'curve' a polyline with many vertices, such that the polyline
%   can be considered as a discrete approximation of a "real" curve.
%
%   A simple polygon or polyline is represented by a N-by-2 array, each row
%   of the array representing the coordinates of a vertex. 
%   Simple polygons are assumed to be closed, so there is no need to repeat
%   the first vertex at the end. 
%
%   For multiple-connected polygons, the different connected boundaries are
%   separated by a row [NaN NaN].
%
%   For some functions, the orientation of the polygon can be relevant: CCW
%   stands for 'Conter-Clockwise' (positive orientation), CW stands for
%   'Clockwise'.
%
%   Polylines can be parametrized in the following way:
%   - the i-th vertex is located at position i-1
%   - points of the i-th edge have positions ranging linearly from i-1 to i
%   The parametrisation domain for an open polyline is from 0 to Nv-1, and
%   from 0 to Nv for a closed polyline (positions 0 and Nv correspond to
%   the same point).
%
%   Example:
%   % Simple polygon:
%   P1 = [1 1;2 1;2 2;1 2];
%   drawPolygon(P1);
%   axis([0 5 0 5]);
%   % Multiple polygon:
%   P2 = [10 10;40 10;40 40;10 40;NaN NaN;20 20;20 30;30 30;30 20];
%   figure;drawPolygon(P2); axis([0 50 0 50]);
%
%
% Polylines
%   polylines2d               - Description of functions operating on polylines
%   polylinePoint             - extract a point from a polyline
%   polylineLength            - return length of a polyline given as a list of points
%   polylineCentroid          - Compute centroid of a curve defined by a series of points
%   polylineSubcurve          - extract a portion of a polyline
%   reversePolyline           - reverse a polyline, by iterating vertices from the end
%   isPointOnPolyline         - check if a point belongs to a polyline
%   projPointOnPolyline       - compute position of a point projected on a polyline
%   distancePointPolyline     - Compute shortest distance between a point and a polyline
%   distancePolylines         - compute the shortest distance between 2 polylines
%   intersectPolylines        - find common points between 2 polylines
%   polylineSelfIntersections - find self-intersections points of a polyline
%
% Curves (polylines with lot of vertices)
%   parametrize               - return a parametrization of a curve
%   curvature                 - estimate curvature of a curve defined by points
%   cart2geod                 - convert cartesian coordinates to geodesic coord.
%   geod2cart                 - convert geodesic coordinates to cartesian coord.
%   curveMoment               - Compute inertia moment of a 2D curve
%   curveCMoment              - Compute centered inertia moment of a 2D curve
%   curveCSMoment             - Compute centered scaled moment of a 2D curve
%
% Polygons
%   polygons2d                - Description of functions operating on polygons
%   polygonPoint              - extract a point from a polygon
%   polygonLoops              - divide a possibly self-intersecting polygon into a set of simple loops
%   polygonSubcurve           - extract a portion of a polygon
%   reversePolygon            - reverse a polygon, by iterating vertices from the end
%   clipPolygon               - clip a polygon with a rectangular box
%   clipPolygonHP             - clip a polygon with a Half-plane defined by a directed line
%   intersectLinePolygon      - get intersection points between a line and a polygon
%   intersectRayPolygon       - get intersection points between a ray and a polygon
%   polygonSelfIntersections  - find common points between 2 polygons
%   projPointOnPolygon        - Compute position of a point projected on a polygon
%   expandPolygon             - expand a polygon by a given (signed) distance
%   splitPolygons             - convert a NaN separated polygon list to a cell array of polygons
%   rectAsPolygon             - convert a (centered) rectangle into a series of points
%   medialAxisConvex          - compute medial axis of a convex polygon
%
% Measures on Polygons
%   isPointInPolygon          - Check if a point is located inside a polygon
%   polygonContains           - test if a point is contained in a multiply connected polygon
%   polygonCentroid           - compute centroid (center of mass) of a polygon
%   polygonArea               - compute the signed area of a polygon
%   polygonLength             - compute perimeter of a polygon
%   polygonNormalAngle        - compute normal angle at a vertex of the polygon
%   polygonBounds             - compute bounding box of a polygon
%   distancePointPolygon      - Compute shortest distance between a point and a polygon
%   distancePolygons          - compute the shortest distance between 2 polygons
%
% Functions from stochastic geometry
%   steinerPoint              - compute steiner point (weighted centroid) of a polygon
%   steinerPolygon            - create a Steiner polygon from a set of vectors
%   supportFunction           - compute support function of a polygon
%   convexification           - compute convexification of a polygon
%
% Input / Output
%   readPolygon               - read a polygon stored in a file
%   polygonToRow              - Convert polygon coordinates to a row vector
%   rowToPolygon              - Create a polygon from a row vector
%
% Drawing functions
%   drawPolyline              - draw a polyline specified by a list of points
%   drawPolygon               - draw a polygon specified by a list of points
%   fillPolygon               - fill a polygon specified by a list of points
%   drawRect                  - draw rectangle on the current axis
%   drawRect2                 - draw centered rectangle on the current axis
%
%
%   Credits:
%   * function intersectPolylines uses the 'interX' contribution from "NS"
%       (file exchange 22441, called 'curve-intersections')
%
% -----
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% created the  07/11/2005.
% Copyright INRA - Cepia Software Platform.
% http://www.pfl-cepia.inra.fr/index.php?page=geom2d

help('Contents');

%% Requires further development


%%   Deprecated functions

%   polygonExpand             - 'expand' a polygon with a given distance
%   subCurve                  - extract a portion of a curve
%   curveLength               - return length of a curve (a list of points)
%   curveCentroid             - compute centroid of a curve defined by a series of points
%   drawCurve                 - draw a curve specified by a list of points


%% Others...
/// @arg other_id
var _other = argument[0];

x = xprevious;
y = yprevious;

var m1 = mass;
var m2 = _other.mass;

// find unit normal vector
var nx = _other.x - x;
var ny = _other.y - y;
var nm = point_distance(0,0,nx,ny);
nx /= nm;
ny /= nm;

// find tangent vector
var tx = -ny;
var ty = nx;

// get init velocities
var v1x = x_speed;
var v1y = y_speed;
var v2x = _other.x_speed;
var v2y = _other.y_speed;

// find normal and tangential components of v1 and v2
var s1n = dot_product(nx,ny,v1x,v1y);
var s1t = dot_product(tx,ty,v1x,v1y);
var s2n = dot_product(nx,ny,v2x,v2y);
var s2t = dot_product(tx,ty,v2x,v2y);

// tangential components don't change
// var s1t_f = s1t
// var s2t_f = s2t

// find final normal component
var s1n_f = (s1n * (m1 - m2) + 2 * m2 * s2n) / (m1 + m2);
var s2n_f = (s2n * (m2 - m1) + 2 * m1 * s1n) / (m2 + m1);

// find final normal and tangential velocities
var v1_nx_f = s1n_f * nx;
var v1_ny_f = s1n_f * ny;
var v1_tx_f = s1t * tx;
var v1_ty_f = s1t * ty;

var v2_nx_f = s2n_f * nx;
var v2_ny_f = s2n_f * ny;
var v2_tx_f = s2t * tx;
var v2_ty_f = s2t * ty;

// find final velocity
x_speed = v1_nx_f + v1_tx_f;
y_speed = v1_ny_f + v1_ty_f;
_other.x_speed = v2_nx_f + v2_tx_f;
_other.y_speed = v2_ny_f + v2_ty_f;
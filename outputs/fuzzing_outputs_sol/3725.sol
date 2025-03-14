pragma solidity ^0.8.0;

contract Example8 {
    (uint x 1, uint y) = (7, 14);
    Example8 a = Example8(new Example8());
    Example8 b = Example8(new Example8());
    uint z = 5;
    uint q;
    b.a = a;
    (b.x, b.y) = (z, z);
    (b.x, b.y) = (a.x, b.y);
    q = b.add;
    q = z - b.subtract;
    b.x = z;
    (a.x, a.y) = (z, z);
    b.x = z;
    b.y = a.x;
    if(b.x == q) {
       (a.x, a.y) = (q, b.y);
    }
    b.x = z;
    b.y = a.x;
    uint w;
    if(0 == b.y) {
        (a.x, a.y ) = (b.x, a.y);
    }
    if(b.x == a.x)
    {
    }
    else if(b.y == a.x)
    {
        (uint x, uint y) = (b.x, b.y);
        if(a.x == x && a.y == y) {
            return b.x;
        }
        return w;
    }
    else
    {
        if(0 == b.x || 0 == b.y) {
            return z;
        }
        return x;
    }
}

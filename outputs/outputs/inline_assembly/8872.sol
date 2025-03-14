pragma solidity ^0.8.0;
contract Test
{
    struct Point3X3
    {
        uint y;
        uint x;
    }
    uint z = 2;
    Point3X3 point;
    function test() public {
        Point3X3 _p = point;
        _p.y /= _p.x;
        _p.x *= z;
        _p.x %= _p.x;
        _p.x <<= _p.x;
        _p.x >>= _p.x;
        _p.x %= _p.x;
        _p.x *= z;
    }
}

pragma solidity ^0.8.0;
contract Test
{
    struct Point3X3
    {
        uint y;
        uint x;
    }
    uint z = 3;
    Point3X3 point;
    function test() public {
        Point3X3 _p = point;
        point.y /= z;
        point.x *= z;
        Point3X3 _pr = _p;
        point.x %= z;
        point.x <<= z;
        point.y <<= z;
        point.x >>= z;
        point.x %= z;
        point.y /= z;
        point.x *= z;

        _pr.x /= _pr.x;
    }
}

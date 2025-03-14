pragma solidity ^0.8.0;
contract Test
{
    struct Point3X3
    {
        uint y;
        uint x;
    }
    uint z = 1;
    Point3X3 point;
    function test() public {
        point.y /= z;
        point.x *= z;
        point.y %= z;
        point.x <<= z;
        point.y <<= z;
        point.x >>= z;
        point.x %= z;
    }
}

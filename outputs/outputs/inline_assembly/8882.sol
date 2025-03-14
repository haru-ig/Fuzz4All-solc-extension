pragma solidity ^0.8.0;
contract Test
{
    struct Point3X3
    {
        uint y;
        uint x;
    }
    uint z = 1;
    Point3X3 public point;
    uint x;
    function test() public {
        z = 2;
        point.y <<= z;
        z = 3;
        point.x ^= z;
        z = 4;
        point.y = z;
    }
}

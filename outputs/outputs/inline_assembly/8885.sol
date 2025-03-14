pragma solidity ^0.8.0;
contract Test_SemanticallyEquivalent
{
    struct Point3X3
    {
        uint x;
        uint y;
    }
    uint z = 1;
    uint x;
    Point3X3 public point;
    function test() public {
        point.y /= z;
        point.y *= z;
        point.x += z;
        point.y <<= z;
        z = 2;
        point.y <<= z;
        z = 3;
        point.x |= z;
        point.x &= z;
        point.y %= z;
        z = 4;
        point.y |= x;
    }
}

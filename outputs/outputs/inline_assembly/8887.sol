pragma solidity ^0.8.0;
contract Test_SemanticallyEquivalent
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
        point.y /= 2;
        point.y *= 2;
        point.x += 2;
        point.y <<= 2;
        z = 2;
        point.y <<= 2;
        point.y++;
        point.y %= 2;
        z = 3;
        point.y |= 2,3;
        z = 4;
        point.y |= x;
    }
}

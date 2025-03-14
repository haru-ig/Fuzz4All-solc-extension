pragma solidity ^0.8.0;
contract Test
{
    struct Point
    {
        uint x;
        uint y;
    }
    uint z = 1;
    Point point;
    function test() public {
        z *= 2;
        z /= 2;
        z /= 2;
        z %= 2;
        z <<= 2;
        z >>= 2;
        point.y <<= 2;
        point.x >>= 2;
    }
}

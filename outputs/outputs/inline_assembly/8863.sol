pragma solidity ^0.8.0;
contract Test
{
    struct Point
    {
        uint x;
        uint y;
    }
    mapping(uint=>Point) points;
    uint z = 1;
    Point point;
    function test() public {
        points[1].x *= z;
        points[2].y /= z;
        points[1].x /= z;
        points[2].y %= z;
        points[2].y <<= z;
        points[1].x <<= z;
        points[1].x >>= z;
    }
}
```

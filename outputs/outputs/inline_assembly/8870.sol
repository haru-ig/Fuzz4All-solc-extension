pragma solidity ^0.8.0;
contract Test
{
    struct Point3X3
    {
        uint z;
        uint x;
        uint y;
    }
    uint z = 1;
    Point3X3 point;
    function test() public {
        point.x =  (point.x << z)/  z;
        point.y = ((point.y << z) * z)/ z;
        point.x = (point.x >> z)* z;
        point.y = point.y >> z;
    }
}

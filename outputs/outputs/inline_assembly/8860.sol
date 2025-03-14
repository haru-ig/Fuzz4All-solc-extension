pragma solidity ^0.8.0;
contract Test
{
    uint z = 1;
    uint x = 1;
    uint w = 1;
    uint point1_x = 2;
    uint point1_y = 2;
    uint point2_x = 2;
    uint point2_y = 2;
    function test() public {
        point1_x *= z;
        point1_y /= z;
        point1_x /= z;
        point1_y %= z;
        point1_y <<= z;
        point1_x <<= z;
        point1_x >>= z;
        point2.x /= z;
        point2_x /= w;
        point2_x <<= w;
        point2_y /= _z;
        point2.x >>= z;
        point2_y >>= w;

    }
}
contract Test {
    struct Point
    {
        uint x;
        uint y;
    }
    struct P
    {
        uint x0;
        uint x1;
    }
    P _p;
    constructor() public {
        _p.x0 = 2;
        _p.x1 = 5;
    }



    function test() public {
        Point(point1_x, point1_y) = P(_p.x0).multiply();
        Point(point1_x, point1_y) /= P(_p.x0);
        Point(point1_x, point1_y) /= P(_p.x1);
        Point(point1_x, point1_y) %= P(_p.x1);
        Point(point1_x, point1_y) <<= P(_p.x1);
        Point(point1_x, point1_y) <<= P(_p.x0);
        Point(point1_x, point1_y) >>= P(_p.x0);
    }
}

pragma solidity ^0.8.0;
contract Test
{
    struct Point3X3
    {
        uint x;
        uint y;
    }
    uint z = 1;
    Point3X3 point;
    function test(uint amount) public {
        point.x = amount * z;
        point.y = amount * z;
        point.x %= z;
        point.y >>%= z;
        point.x &= z;
        point.y <<=%= z;
        point.x >>=%= z;
        point.y &=%= z;
    }
}

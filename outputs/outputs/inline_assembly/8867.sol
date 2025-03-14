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
        z;
        ++z;
        z;
        *address(0x0);
        ~z;
        z <= z;
        z == z;
        z!= z;
        z && false;
        z || false;
        z && z;
        z || z;
        z > 0;
        z < 0;
        z ~ z;
        z < z;
        z > z;
        z <= z;
        z <<= z;
        z >>= z;
        z++;
        z--;
    }
}

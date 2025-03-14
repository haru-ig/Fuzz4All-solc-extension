pragma solidity ^0.8.0;
contract Test
{
    uint z = 1;
    Point storage p;
    function test() public {
        p.y /= z;
        p.y *= z;
        p.x += z;
        p.y <<= z;
        z = 2;
        p.y <<= z;
        z = 3;
        p.x |= z;
        p.x &= z;
        p.y %= z;
        z = 4;
        p.y |= x;
    }
}
